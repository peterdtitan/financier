Rails.application.routes.draw do
  
  resources :categories, only: %i[index show new create] do
    resources :payments, only: %i[index new create]
  end

  root to: 'users#index'
end
