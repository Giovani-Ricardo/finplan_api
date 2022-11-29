Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :usuarios
  
  namespace :api   do
    
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :funcionarios
      resources :despesas
      resources :categorias_despesa
      get :filtrar_despesa, to: 'despesas#filtrar'
      get :top_5_despesas, to: 'despesas#top_5_despesas'
      resources :meta_gastos, only: [:index, :create]
      post :atualizar_meta, to: 'meta_gastos#atualizar_meta'
    end
  end
end
