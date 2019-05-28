Rails.application.routes.draw do
  get 'employees/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/new', to: 'employees#new'
  resources :employees
end
