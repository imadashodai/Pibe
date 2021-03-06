Rails.application.routes.draw do
  resources :articles
  get 'sessions/new'

  root to: 'static_pages#home'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post '/formations/upd_player1', to: 'formations#upd_player1'
  post '/formations/upd_player2', to: 'formations#upd_player2'
  post '/formations/upd_player3', to: 'formations#upd_player3'
  post '/formations/upd_player4', to: 'formations#upd_player4'
  post '/formations/upd_player5', to: 'formations#upd_player5'
  post '/formations/upd_player6', to: 'formations#upd_player6'
  post '/formations/upd_player7', to: 'formations#upd_player7'
  post '/formations/upd_player8', to: 'formations#upd_player8'
  post '/formations/upd_player9', to: 'formations#upd_player9'
  post '/formations/upd_player10', to: 'formations#upd_player10'
  post '/formations/upd_player11', to: 'formations#upd_player11'
  

  
 
  resources :users
  resources :teams
  resources :my
  resources :formations
  resources :meetings

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
