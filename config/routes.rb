Rails.application.routes.draw do

  root 'sessions#new'
  post '/sessions/register' => 'sessions#register'
  post '/sessions/login' => 'sessions#login'
  delete '/sessions' => 'sessions#destroy'

  get '/users/:id' => 'users#show'

  get '/bright_ideas' => 'posts#index'
  get '/bright_ideas/:id' => 'posts#show'
  post '/bright_ideas' => 'posts#create'
  delete '/bright_ideas/:id' => 'posts#destroy'

  post '/likes' => 'likes#create'
  # get 'posts/index'

  # get 'posts/create'

  # get 'posts/destroy'

  # get 'posts/index'

  # get 'posts/create'

  # get 'posts/destroy'

  # get 'likes/create'

  # get 'likes/destroy'

  # get 'likes/create'

  # get 'likes/destroy'

  # get 'users/new'

  # get 'users/index'

  # get 'users/show'

  # get 'users/new'

  # get 'users/index'

  # get 'users/show'

  # get 'sessions/new'

  # get 'sessions/login'

  # get 'sessions/register'

  # get 'sessions/destroy'

  # get 'sessions/new'

  # get 'sessions/login'

  # get 'sessions/register'

  # get 'sessions/destroy'

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
