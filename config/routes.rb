Rails.application.routes.draw do
  get 'reviews/index'
  devise_for :users
  root 'techcamps#top'
  resources :mentors, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
