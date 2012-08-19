Refinery::Core::Engine.routes.append do
  devise_for :applicants,
             :name => :applicant,
             :class_name => "Refinery::Applications::Applicant",
             :controllers => {:registrations => "refinery/applications/registrations",
                              :sessions => "refinery/applications/sessions"}
  
  # Frontend routes
  namespace :applications do
    resources :applications, :path => '', :only => [:index, :show, :edit, :update] do
      member do
        post :submit
      end
    end
  end

  # Admin routes
  namespace :applications, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :applications, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
