module Refinery
  module Applications
    module Admin
      class ApplicationsController < ::Refinery::AdminController

        crudify :'refinery/applications/application',
                :title_attribute => 'full_name',
                :order => 'state ASC',
                :sortable => false,
                :xhr_paging => true
                
      end
    end
  end
end
