Rails.application.routes.draw do

  resources :file_lists
  get '/:filepath' => 'file_lists#index', filepath: %r([0-9a-zA-Zа-яА-ЯёЁ\/\%\-_\s]+)
  root 'file_lists#index'
end
