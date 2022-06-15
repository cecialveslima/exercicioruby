Rails.application.routes.draw do
  devise_for :users
  resources :nota_fiscals
  resources :pedidos
  resources :item_pedidos
  resources :endereco_clientes
  resources :marcas
  resources :clientes
  resources :produtos
  resources :plano_pgtos
  resources :tipo_pgtos
  resources :sub_categoria
  resources :departamentos
  resources :categoria
  resources :marcas 
  resources :home 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
end
