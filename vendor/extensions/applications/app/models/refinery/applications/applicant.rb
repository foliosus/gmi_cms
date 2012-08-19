module Refinery
  module Applications
    class Applicant < Refinery::Core::BaseModel
      self.table_name = 'refinery_applicants'      
      
      acts_as_indexed :fields => [:first_name, :last_name, :email]
      
      devise :database_authenticatable, :recoverable, :rememberable, :trackable, :registerable, :authentication_keys => [:email]
      
      validates :first_name, :presence => true, :length => {:maximum => 50}
      validates :middle_name, :length => {:maximum => 50}
      validates :last_name, :presence => true, :length => {:maximum => 50}
      
      has_one :application, :foreign_key => 'refinery_applicant_id', :dependent => :destroy
      
      def load_or_create_application
        unless application.present?
          build_application
          application.save(:validate => false)
        end
        application
      end
      
      def full_name
        "#{first_name} #{last_name}"
      end
    end
  end
end
