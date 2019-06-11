Rails.application.routes.draw do
  resources :estudantes
  resources :turmas
  resources :escolas
  resources :anos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
