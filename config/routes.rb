Rails.application.routes.draw do

  root 'posts#index'

  get 'posts/index'

  # namespace :api do
  #   get 'posts/index'
  # end

  # namespace :api do
  #   get 'posts/show'
  # end
# , defaults: { format: :json }
  namespace :api, defaults: { format: :json } do
    resources :posts, only: [ :index, :show ]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
