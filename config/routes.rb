Yigitbacakoglu::Application.routes.draw do


  scope "/blog" do
    match '/tagged/:tag', to: 'posts#index', as: 'posts_by_tag'
    match '/:year(/:month(/:day))', to: 'posts#index', as: 'posts_by_date',
          year: /\d{4}/,
          month: /\d{1,2}/,
          day: /\d{1,2}/
  end


  devise_for :users,
             :path => '/admin',
             :path_names => {:sign_in => "/login", :sign_out => "/logout", :sign_up => "/register"},
             :controllers => {:sessions => "user_sessions",
                              :registrations => "user_registrations",
                              :passwords => "user_passwords"
             }

  resources :posts

  get '/admin' => "admin/overview#index", :as => :admin
  root :to => 'home#index'
  namespace :admin do
    resources :account, :except => [:show, :index]
    resources :posts
    resources :categories
    get '/account', :as => :account, :to => 'account#show'
    put '/account', :as => :update_account, :to => 'account#update'

  end

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


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
