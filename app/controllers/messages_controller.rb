class MessagesController < ApplicationController


  # GET / messages.json
  def index
    # maybe MessageS?.all
    render json: Message.all, root: "messages"
  end

  def new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    render json: @message
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    render json: @message
  end


  private

  def message_params
    params.permit(:user_id, :content, :likes, :tags)
  end

end