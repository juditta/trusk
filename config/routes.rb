Trusk::Application.routes.draw do



  resources :categories
  resources :order_items do
    resources :orders
  end
  resources :orders
  resources :delivery_products do
    resources :deliveries
  end
  resources :deliveries 
  resources :products
  resources :units
  resources :spree_prototypes
  resources :prototypes
  resources :contractors

  match '/magazyn/pz' => 'deliveries#new'
  match '/magazyn/wz'  => 'orders#new'

  match '/magazyn/pz/:id'  => 'magazine#pz', :as => 'pz_magazine'
  match '/magazyn/wz'  => 'magazine#wz'
  match '/:modul' => 'application#index', :as => 'modul'
  match '/deliveries/:id/confirm' => 'deliveries#confirm', :as => 'confirm_delivery'
  match '/orders/:id/confirm' => 'orders#confirm', :as => 'confirm_order'

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/e-sklep'
        
  devise_for :users
  
  get '/home'=> 'static_pages#home'
  get '/kontakt' => 'static_pages#contact'

  root :to => 'application#index'

  #resources :users
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
