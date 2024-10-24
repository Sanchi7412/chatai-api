class ChatsController < ApplicationController
  def index
    chats = Chat.all
    render status: 200, json: { messages: chats }
  end
end
