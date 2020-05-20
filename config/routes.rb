Rails.application.routes.draw do
  root to: 'pages#home'
  # resources :pages, only: [:home, :faq]
  get "faq", to: 'pages#faq', as: :faq

  resources :interested_users, only: [:new, :create]
  get "new", to: "interested_users#new", as: :form
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
