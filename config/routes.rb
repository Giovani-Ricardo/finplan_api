Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :usuarios
  
  namespace :api do
    namespace :v1 do
      resources :funcionarios
      resources :despesas
      resources :categorias_despesa
    end
  end
end
