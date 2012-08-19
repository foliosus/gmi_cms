module Refinery
  module Applications
    class Application < Refinery::Core::BaseModel
      self.table_name = 'refinery_applications'      
    
      # acts_as_indexed :fields => []

      belongs_to :applicant, :foreign_key => :refinery_applicant_id
      
      delegate  :first_name, :first_name=, :first_name?, :middle_name, :middle_name=, :middle_name?, :last_name, :last_name=, :last_name?,
                :full_name, :full_name=,
                :to => :applicant
      
      state_machine :state, :initial => :incomplete do
        state :incomplete
        state :submitted
        state :accepted
        state :rejected
        
        event :submit do
          transition :incomplete => :submitted
        end
        
        event :accept do
          transition :submitted => :accepted
        end
        
        event :reject do
          transition :submitted => :rejected
        end
        
        event :resubmit do
          transition :rejected => :incomplete
        end
      end
      
      def can_be_edited?
        incomplete?
      end
      
      # *****************
      # Application parts
      # *****************
      
      validates :address1, :presence => true, :length => {:maximum => 50}, :on => :update
      validates :address2, :length => {:maximum => 50}, :on => :update
      validates :city, :presence => true, :length => {:maximum => 50}, :on => :update
      validates :province, :presence => true, :length => {:maximum => 30}, :on => :update
      validates :postal_code, :presence => true, :length => {:maximum => 10}, :on => :update
      
      validates :statement, :presence => true
      
      PARTS = {
        contact_information: [:address1, :address2, :city, :province, :postal_code, :country],
        personal_statement: [:statement]
      }
      
      # If any of the fields for this part
      def valid_for_part?(part)
        sym = part.to_sym
        raise ArgumentError, "Invalid application part given: #{sym} isn't one of #{PARTS.keys}" unless PARTS.keys.include?(sym)
        valid?
        self.errors.keys.none?{|k| PARTS[sym].include?(k)}
      end
      
      def self.part_names
        PARTS.keys.collect{|k| k.to_s.humanize}
      end
      
      def self.parts
        PARTS
      end
    end
  end
end
