Sms::Application.routes.draw do

  get 'mobile/get_unsend'

  get "distribution_list/index"
  resources :login, :path => 'login/(:action)(.:format)'
  resources :distribution_file, :path => 'distribution_file/(:action)(.:format)'
  resources :distribution_list, :path => 'distribution_list/(:action)(.:format)'
  resources :client, :path => 'client/(:action)(.:format)'
  resources :template_text, :path => 'template_text/(:action)(.:format)'
  resources :template_voice, :path => 'template_voice/(:action)(.:format)'
  resources :sms_queue, :path => 'sms_queue/(:action)(.:format)'
  resources :mobile, :path => 'mobile/(:action)(.:format)'

  namespace :admin do
    resources :users, path: 'users/(:action)(:id)(.:format)'
    resources :sms_services, path: 'sms_services/(:action)(:id)(.:format)'
  end

  namespace :cron do
    resources :send_sms, path: 'send_sms/(:action)(:id)(.:format)'
  end


  root 'main#index'




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
