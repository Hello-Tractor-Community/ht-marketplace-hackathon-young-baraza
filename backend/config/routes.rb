Rails.application.routes.draw do
  get 'sms/send'
  
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }

  # Get current user
  get "/current_user", to: "currents#index"
  
  namespace :api do
    namespace :v1 do
      resources :profiles, only: [:index]
    end
    
    resources :crops, only: [:index, :show, :create, :update, :destroy]    
    resources :products, only: [:index, :show, :create, :update, :destroy]
    resources :cart_items, only: [:index, :show, :create, :update, :destroy]
    resources :issues, only: [:index, :show, :create, :update, :destroy]
    resources :safety_procedures, only: [:index, :show, :create, :update, :destroy] do
      # Admin-specific actions for approving and rejecting safety procedures
      member do
        post :approve
        post :reject
      end
    end
  end

end
