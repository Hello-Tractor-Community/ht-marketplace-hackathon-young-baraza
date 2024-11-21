module Api
  class SafetyProceduresController < ApplicationController
    before_action :authenticate_user!
    before_action :set_safety_procedure, only: [:show, :update, :destroy, :approve, :reject]
    
    def create
      @safety_procedure = current_user.safety_procedures.new(safety_procedure_params)
      @safety_procedure.status = 'pending'  # Set default status as pending

      if @safety_procedure.save
        render json: SafetyProcedureSerializer.new(@safety_procedure).serializable_hash, status: :created
      else
        render json: { status: "error", message: "Failed to save Safety Procedure.", errors: @safety_procedure.errors }, status: :unprocessable_entity
      end
    end
    
    def index
      if current_user.role == "user"
        @safety_procedures = current_user.safety_procedures
      else
        @safety_procedures = SafetyProcedure.all
      end
      render json: SafetyProcedureSerializer.new(@safety_procedures).serializable_hash
    end

    def show
      render json: SafetyProcedureSerializer.new(@safety_procedure).serializable_hash
    end

    def approve
      if current_user.role == "admin"
        @safety_procedure.approve!(current_user)
        render json: SafetyProcedureSerializer.new(@safety_procedure).serializable_hash, status: :ok
      else
        render json: { status: "error", message: "Only admins can approve safety procedures." }, status: :forbidden
      end
    end

    def reject
      if current_user.role == "admin"
        @safety_procedure.reject!(current_user)
        render json: SafetyProcedureSerializer.new(@safety_procedure).serializable_hash, status: :ok
      else
        render json: { status: "error", message: "Only admins can reject safety procedures." }, status: :forbidden
      end
    end

    private

    def set_safety_procedure
      @safety_procedure = SafetyProcedure.find(params[:id])
    end

    def safety_procedure_params
      params.require(:safety_procedure).permit(:special_hazards, :status_motive_fluid, :evacuated_unit, :charged_unit, :status_brine_venting, :venting, :draining_charged, :status_stored_energy, :work_lead_coordinator, :title, :contractors_safety_orientation, :emergency_action_plan, :injury_notification_process, :first_aid_locations, :aed_kits_locations, :burn_packs_locations, :fire_extinguishers_locations, :safety_showers_locations, :eye_wash_locations, :drinking_water_locations, :ppe, :chemical_safety, :environmental_conditions, :safety_procedures_permits, :vehicles_equipment, :shipping_loads, :plant_startup_items, :miscellaneous, :safe_start_certs, :shift_supervisor_name, :pjsm_leader_name, :stop_work_authority_comments, :permit_time, :permit_number, :permit_date, :group_number, :company, :contractor_coord, :coord_employee, :contact_phone, :tools_equipment, :atmospheric_hazards, :gas_monitoring_required, :gas_detector_id, :bump_test_passed, :o2_percentage, :toxic_ppm, :lel_percentage, :safety_hazards, :safety_precautions, :special_ppe_required, :permits_plans_required, :pjsm, :jha, :safe_work_issued_date, :safe_work_issued_time, :work_lead_signature, :authorizer_signature, :equipment_operable, :job_status, :work_area_cleaned, :additional_comments, :final_work_lead_signature, :final_authorizer_signature)
    end
  end
end
