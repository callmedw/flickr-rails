Rails.application.routes.draw do
  devise_for :users
  root :to => "home#index"

  resources :images

  devise_for :users, controllers: {
    registrations: 'devise/registrations',
    sessions: 'devise/sessions'
  }

  resources :users do
    resources :images
  end

end
