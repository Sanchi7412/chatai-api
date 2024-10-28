Rails.application.routes.draw do

  post 'chats/register' => 'chats#register'
  get 'chats/index' => 'chats#index'
  put 'chats/update' => 'chats#update'
  delete 'chats/delete' => 'chats#delete'
  # namespace :api do
  #   get 'v1/chatsPosts' do
  #     resources :Chat, only: [:show, :index, :create, :update]
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
