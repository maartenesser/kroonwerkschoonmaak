Rails.application.routes.draw do
  root to: 'pages#home'

  get "sitemap", to:'sitemaps#index', defaults: {format: :xml}
  # resources :pages, only: [:home, :faq]
  get "faq", to: 'pages#faq', as: :faq
  get "calendly", to: 'pages#calendly'

  resources :interested_users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
