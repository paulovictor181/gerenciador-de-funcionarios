Rails.application.routes.draw do
  resources :funcionarios
  resources :departamentos
  resources :cargos
  # resources :usuarios
  devise_for :usuarios

  root to: "home#index"
end
