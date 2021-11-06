Rails.application.routes.draw do
  get 'categories/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'articles#index'

  resources :articles do
    resources :comments
  end

  resources :categories do 
      resources :products
  end
end
