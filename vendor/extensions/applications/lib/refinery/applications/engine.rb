module Refinery
  module Applications
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Applications

      engine_name :refinery_applications

      initializer "register refinerycms_applications plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "applications"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.applications_admin_applications_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/applications/application',
            :title => 'first_name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Applications)
      end
    end
  end
end
