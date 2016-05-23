Rails.application.routes.draw do

  root 'file_lists#index'

  resources :file_lists

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
