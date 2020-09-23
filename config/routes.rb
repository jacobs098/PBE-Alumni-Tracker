Rails.application.routes.draw do

  root 'home#front'

  get 'home/login'
  post 'home/attempt_login'
  get 'home/logout'

  resources :alumnis do
    member do
      get :delete
      get :user_info
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
