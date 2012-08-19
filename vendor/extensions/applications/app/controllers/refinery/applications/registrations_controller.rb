module Refinery
  module Applications
    class RegistrationsController < ::Devise::RegistrationsController
      private
      
      def after_sign_up_path_for(resource_or_scope)
        refinery.applications_applications_path
      end
      
      def after_inactive_sign_up_path_for(resource_or_scope)
        refinery.applications_applications_path
      end
      
    end
  end
end
