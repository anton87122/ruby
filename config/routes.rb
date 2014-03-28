MyProject::Application.routes.draw do
  resources :agents

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  #get "/dashboard" => "users#login"
  root :to => 'index#index'  #map.users '/users', :controller => 'user', :action => 'index'
  match '/signup',  to: 'users#contact',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'get'
  match '/dashboard', to: 'sessions#dashboard',     via: 'get'
  match '/step1',  to: 'users#step1', via: 'post'
  match '/step2',  to: 'users#step2', via: 'post'
  match '/step3',  to: 'users#step3', via: 'post'
  match '/step4',  to: 'users#step4', via: 'post'
  match '/step_update',  to: 'users#step_update', via: 'post'
  match '/travellerdashboard',  to: 'users#dashboard', via: 'get'
  
  match '/agentsignup',  to: 'agents#contact',            via: 'get'
  match '/agentstep1',  to: 'agents#step1', via: 'post'
  match '/agentstep2',  to: 'agents#step2', via: 'post'
  match '/agentstep3',  to: 'agents#step3', via: 'post'
  match '/agentstep4',  to: 'agents#step4', via: 'post'
  match '/agentstep_update',  to: 'agents#step_update', via: 'post'
  match '/agentsdashboard',  to: 'agents#dashboard', via: 'get'    
  #get "users/signup"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
