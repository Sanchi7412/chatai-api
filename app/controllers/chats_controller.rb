class ChatsController < ApplicationController
  def register
    chat = Chat.new(chat_params)
    if chat.save
      render json: {chats: chat}, status: 201
    else
      render status: 400
    end
  end

  def index
    chats = Chat.all
    if chats.empty?
      render status: 400
    else
      render json: {chats: chats}, status: 200
    end
  end

  def update
    chat = Chat.find_by_id(id: params[:id])
    
    if chat.nil?
      chat = Chat.new(chat_params)
      if chat.save
        render json: {chats: chat}, status: 201
      else
        render status: 400
      end
    else
      if chat.update(chat_params)
        render json: {chats: chat}, status: 200
      else
        render status: 400
      end
    end
  end

  def delete
    chat = Chat.find_by_id(id: params[:id])

    if chat.nil?
      render status: 400
    else
      if chat.destroy
        render status: 204
      else
        render status: 400
      end
    end
  end

  private
    def chat_params
      params.require(:chat).permit(:message, :ai_type)
    end
end
