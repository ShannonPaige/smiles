Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :humen, only: [:index, :show, :create], defaults: {format: :json}
      resources :transfers, only: [:create], defaults: {format: :json}
    end
  end
end
