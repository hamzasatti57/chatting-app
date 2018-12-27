Rails.application.routes.draw do
  
  root :to => "home#index"   
  get '/admin_panel', to: "home#admin_panel"   
  get '/user_panel', to: "home#user_panel" 
  
  delete 'home/:id(.:format)', :to => 'home#destroy' , :as => 'del'
  
  devise_for :super_admins, :controllers => { registrations: 'admin' }
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
