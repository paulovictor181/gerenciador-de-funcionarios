Rails.application.routes.draw do
  resources :funcionarios
  resources :departamentos
  resources :cargos
  devise_for :usuarios

  root to: "home#index"
end
