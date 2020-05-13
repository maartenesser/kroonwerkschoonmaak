Rails.application.routes.draw do
  root to: 'pages#home'
  # resources :pages, only: [:home, :faq]
  get "faq", to: 'pages#faq', as: :faq
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
