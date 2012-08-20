module Refinery
  module Applications
    class ApplicationsController < ::ApplicationController
      before_filter :authenticate_applicant!
      before_filter :load_application, :except => :index
      
      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @application in the line below:
        @application = current_applicant.load_or_create_application
        
        present(@page)
      end
      
      def edit
        part = params[:part].try(:to_sym)
        @part = Application.parts.keys.include?(part) ? part : Application.parts.keys.first
        
        flash.now[:notice] = "You application has been submitted, and can no longer be changed" unless @application.can_be_edited?
        
        # If we've already started filling out this part of the app, start with the validations run
        @application.valid? if Application.parts[@part].any?{|field| @application.send(:"#{field}?")}
        
        respond_to do |format|
          format.html # render
        end
      end
      
      def update
        if @application.can_be_edited?
          @application.attributes = params[:application]
          @application.save(:validate => false)
        else
          flash[:error] = 'Your application has been submitted, and may no longer be changed'
        end
        
        respond_to do |format|
          format.html { redirect_to refinery.applications_applications_path}
        end
      end
      
      def submit
        if @application.valid?
          @application.submit!
        else
          flash[:warning] = "Your application seems to have some errors, and can't be submitted at the moment. Please review the information and try re-submitting."
        end
        
        respond_to do |format|
          format.html { redirect_to refinery.applications_applications_path}
        end
      end
      
      private
      
      def find_all_applications
        @applications = []
      end
      
      def load_application
        @application = current_applicant.application
      end
    end
  end
end
