Rails.application.routes.draw do



  resources :trips do
    resources :activities, shallow: true
    resources :expenses, :only => [:index, :new, :create, :edit, :update, :destroy]
    resources :polls
  end

  devise_for :users 

  post 'trips/:trip_id/polls/:id/upvote' => "polls#upvote", :controller => :poll
  post 'trips/:trip_id/polls/:id/downvote' => "polls#downvote", :controller => :poll

  root "welcome#index"

  # custom routes for mobile users:
  # creating users from mobile:
  get 'mobile_users/new' => 'mobile_users#new'
  post 'mobile_users/new' => 'mobile_users#create'
  # creating trips from mobile:
  get 'mobile_trips/new' => 'mobile_trips#new'
  post 'mobile_trips/new' => 'mobile_trips#create'
  # getting user trips from mobile:
  get 'mobile_trips/user_trips'
  post 'mobile_trips/user_trips' => 'mobile_trips#user_trips'
  get 'mobile_trips/trip_detail'
  post 'mobile_trips/trip_detail' => 'mobile_trips#trip_detail'
  get 'mobile_trips/activities_detail'
  post 'mobile_trips/activities_detail' => 'mobile_trips#activities_detail'
  # creating activities from mobile:
  get 'mobile_activities/new' => 'mobile_activities#new'
  post 'mobile_activities/new' => 'mobile_activities#create'

  # logging in from mobile:
  get 'mobile_sessions/sign_in'
  post 'mobile_sessions/sign_in' => 'mobile_sessions#create_session'


  # custom routes for trip invitiations
  post 'trips/:id/invite' => "trips#invite"
  put 'trip_participations/:id' => "trip_participations#update"
  delete 'trip_participations/:id' => "trip_participations#destroy"


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
