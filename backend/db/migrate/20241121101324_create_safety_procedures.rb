class CreateSafetyProcedures < ActiveRecord::Migration[7.1]
  def change
    create_table :safety_procedures do |t|
      t.text :special_hazards
      t.text :status_motive_fluid
      t.boolean :evacuated_unit
      t.boolean :charged_unit
      t.text :status_brine_venting
      t.boolean :venting
      t.boolean :draining_charged
      t.text :status_stored_energy
      t.text :work_lead_coordinator
      t.text :title

      t.boolean :contractors_safety_orientation
      t.text :emergency_action_plan
      t.text :injury_notification_process

      t.text :first_aid_locations
      t.text :aed_kits_locations
      t.text :burn_packs_locations
      t.text :fire_extinguishers_locations
      t.text :safety_showers_locations
      t.text :eye_wash_locations
      t.text :drinking_water_locations

      t.text :ppe
      t.text :chemical_safety
      t.text :environmental_conditions
      t.text :safety_procedures_permits

      t.text :vehicles_equipment
      t.text :shipping_loads
      t.text :plant_startup_items
      t.text :miscellaneous
      t.text :safe_start_certs

      t.text :shift_supervisor_name
      t.text :pjsm_leader_name

      t.text :stop_work_authority_comments
      t.time :permit_time
      t.text :permit_number
      t.date :permit_date
      t.integer :group_number
      t.text :company
      t.text :contractor_coord
      t.text :coord_employee
      t.text :contact_phone
      t.text :tools_equipment

      t.text :atmospheric_hazards
      t.boolean :gas_monitoring_required
      t.text :gas_detector_id
      t.boolean :bump_test_passed
      t.decimal :o2_percentage, precision: 5, scale: 2
      t.decimal :toxic_ppm, precision: 10, scale: 2
      t.decimal :lel_percentage, precision: 5, scale: 2

      t.text :safety_hazards
      t.text :safety_precautions
      t.text :special_ppe_required
      t.text :permits_plans_required

      t.text :pjsm
      t.text :jha

      t.date :safe_work_issued_date
      t.time :safe_work_issued_time
      t.text :work_lead_signature
      t.text :authorizer_signature
      t.boolean :equipment_operable

      t.text :job_status
      t.boolean :work_area_cleaned
      t.text :additional_comments
      t.text :final_work_lead_signature
      t.text :final_authorizer_signature
      t.string :status,  default: 'pending'

      t.timestamps
    end

    add_reference :safety_procedures, :user, null: false, foreign_key: true
    add_reference :safety_procedures, :admin, null: true, foreign_key: { to_table: :users }
  end
end
