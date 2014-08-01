Rails.application.routes.draw do
 
  get 'reports/index'
  get 'reports/dailySchedule'
  get 'reports/weeklyDeadline'
  get 'reports/customerRanking'
  get 'reports/expense'
  get 'reports/busySeason'
  get 'reports/garmentPopularity'

  get 'quotes/show'

  get 'welcome/index'

  post '/ajax/renderChart' => 'reports#ajax_renderChart'

  post '/ajax/profit_per_garment_type' => 'reports#ajax_profit_per_garment_type'

  resources :expenses
  resources :customers, except: [:destroy]
  resources :appointments


resources :orders, except: [:destroy] do
	resources :garments, only: [:new]
  resources :quotes, only: [:show]  
  resources :invoices, only: [:show]  
end


resources :garments, except: [:index, :new] do
	resources :costings, only: [:new, :create, :update] 
end

resources :welcome, :member => {:calculate_objective_index => :get}




  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
