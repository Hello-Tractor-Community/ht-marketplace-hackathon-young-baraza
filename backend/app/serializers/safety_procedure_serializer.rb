class SafetyProcedureSerializer
  include JSONAPI::Serializer
  
  attributes :status, :special_hazards, :status_motive_fluid, :evacuated_unit, :charged_unit, :status_brine_venting,
             :venting, :draining_charged, :status_stored_energy, :work_lead_coordinator, :title,
             :contractors_safety_orientation, :emergency_action_plan, :injury_notification_process,
             :first_aid_locations, :aed_kits_locations, :burn_packs_locations, :fire_extinguishers_locations,
             :safety_showers_locations, :eye_wash_locations, :drinking_water_locations, :ppe, :chemical_safety,
             :environmental_conditions, :safety_procedures_permits, :vehicles_equipment, :shipping_loads,
             :plant_startup_items, :miscellaneous, :safe_start_certs, :shift_supervisor_name, :pjsm_leader_name,
             :stop_work_authority_comments, :permit_time, :permit_number, :permit_date, :group_number, :company,
             :contractor_coord, :coord_employee, :contact_phone, :tools_equipment, :atmospheric_hazards,
             :gas_monitoring_required, :gas_detector_id, :bump_test_passed, :o2_percentage, :toxic_ppm,
             :lel_percentage, :safety_hazards, :safety_precautions, :special_ppe_required, :permits_plans_required,
             :pjsm, :jha, :safe_work_issued_date, :safe_work_issued_time, :work_lead_signature,
             :authorizer_signature, :equipment_operable, :job_status, :work_area_cleaned, :additional_comments,
             :final_work_lead_signature, :final_authorizer_signature, :user_id, :admin_id

             attribute :first_name, if: Proc.new { |record| record.user.present? } do |record|
              record.user.first_name
            end
            attribute :last_name, if: Proc.new { |record| record.user.present? } do |record|
              record.user.last_name
            end
            attribute :phone_number, if: Proc.new { |record| record.user.present? } do |record|
              record.user.phone_number
            end
            attribute :location, if: Proc.new { |record| record.user.present? } do |record|
              record.user.location
            end
            attribute :email, if: Proc.new { |record| record.user.present? } do |record|
              record.user.email
            end

            attribute :first_name, if: Proc.new { |record| record.admin.present? } do |record|
              record.admin.first_name
            end
            attribute :last_name, if: Proc.new { |record| record.admin.present? } do |record|
              record.admin.last_name
            end
            attribute :phone_number, if: Proc.new { |record| record.admin.present? } do |record|
              record.admin.phone_number
            end
            attribute :location, if: Proc.new { |record| record.admin.present? } do |record|
              record.admin.location
            end
            attribute :email, if: Proc.new { |record| record.admin.present? } do |record|
              record.admin.email
            end
end
