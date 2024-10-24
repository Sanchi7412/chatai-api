class Api::V1Controller < ApplicationController
  def index
    chats = Chat.all
    render json: chats, status: :ok
  end

  def show
    chats = Chat.find(params[:id])
    render json: chats, status: :ok
  end

  def create
    chats = Chat.new(chat_params)

    if chats.save
      render json: chats, status: :ok
    else
      render json: chats.errors, status: :bad_request
    end
  end

  private
  def chat_params
    params.require(:chats).permit(:message, :ai_type)
  end
end
