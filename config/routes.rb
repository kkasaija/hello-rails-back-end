Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :messages, only: %i[index]
    end
  end

  root 'api/v1/messages#index'
end
