Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    
    resources :categorie, :defaults => { :format => :json } do
      resources :product, :defaults => {:format => :json}
    end   
  end


end
