module Refinery
  module Applications
    class SessionsController < ::Devise::SessionsController
      def new
        flash.delete(:alert) if flash[:alert].try(:include?, 'sign in') # Remove flash error, to have a nice page
        super
      end
      
      private
      
      def after_sign_in_path_for(resource_or_scope)
        refinery.applications_applications_path
      end
    end
  end
end
