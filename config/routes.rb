Rails.application.routes.draw do

  get 'reports/show'

  get 'reports/index'

  get 'reports/new'

  get 'reports/edit'

  get 'reports/create'

  get 'reports/update'

  get 'reports/destroy'

  get 'reports/registrados'

  get 'reports/ganancias'

  get 'counts/index'

  get 'counts/show'

  get 'counts/new'

  get 'counts/edit'

  get 'counts/create'

  get 'counts/update'

  get 'counts/destroy'

  get 'couches/index'

  get 'couches/show'

  get 'couches/new'

  get 'couches/edit'

  get 'couches/create'

  get 'couches/update'

  get 'couches/destroy'

  get 'reserves/index'

  get 'reserves/show'

  get 'reserves/new'

  get 'reserves/edit'

  get 'reserves/create'

  get 'reserves/update'

  get 'reserves/destroy'

  #rutas para los reportes de ganacias
  #y usuarios registrados entre dos fechas
  #get 'reports/ganancias'
  #get 'reports/registrados'


  #ruta de la vista "acerca de"
  get 'posters/show'

  

  resources :tipocouches
  resources :reserves
  resources :couches do
   get 'mis_couches', on: :collection 
  end
  resources :counts

  devise_for :users
  get 'welcome/index'

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
