Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resources :phones, only: [:index, :show] do
    collection do
      get 'special-promotion'
    end
  end

  resources  :accessories, only: [:index, :show]
  resources  :contact_us,  only: [:index, :create]
  resources  :about_us,    only: [:index]
  resources  :brands,      only: [:show]

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in"  => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  resources :users
  resources :sessions

  # http://everydayrails.com/2012/07/31/rails-admin-panel-from-scratch.html
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'

    resources :phones
    resources :accessories
    resources :brands
    resources :profile
    resources :about_us
  end

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
