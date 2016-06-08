Rails.application.routes.draw do

  resources :file_lists, only:[:index]
  root 'file_lists#index'
end
