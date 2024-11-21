class SafetyProcedure < ApplicationRecord
    belongs_to :user
    belongs_to :approver, class_name: 'User', optional: true
  
    validates :status, inclusion: { in: ['pending', 'approved', 'rejected'] }
  
    
    def approve!(admin)
        self.status = 'approved'
        self.admin_id = admin.id
        save!
      end
      
    # Method to reject
    def reject!(admin)
      update!(status: 'rejected', approver: admin)
    end
  end
  