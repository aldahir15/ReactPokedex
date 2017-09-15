Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :todos, only: [:index, :create, :show, :update, :destroy] do
      resources :steps, only: [:index, :create, :update, :destroy]
      resources :tags, only: [:index]
    end
  end

  root to: 'static_pages#root'
end
