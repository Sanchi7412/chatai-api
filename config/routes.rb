Rails.application.routes.draw do

  namespace :api do
    get 'v1/chatsPosts' do
      resources :Chat, only: [:show, :index, :create, :update]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
