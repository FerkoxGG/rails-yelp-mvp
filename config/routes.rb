Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[new create] do
      collection do
        get :top
      end
    end
  end
  resources :reviews, only: [:destroy]
  resources :comments, only: %i[show edit update destroy]
end
