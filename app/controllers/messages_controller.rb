class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    render json: @message
  end


  private

  def message_params
    params.permit(:user_id, :content, :likes, :tags)
  end

end