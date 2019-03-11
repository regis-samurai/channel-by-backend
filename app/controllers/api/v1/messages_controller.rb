class Api::V1::MessagesController < ApiController
  before_action :authenticate_user

  def create
    @channel = Channel.find(params[:channel_id])
    @message = @channel.messages.build(message_params)
    @message.user = current_user
    if @message.save
      render json: @message, :status => 201
    else
      render json: @message.errors.full_messages, :status => 422
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :channel_id, :user_id)
  end
end
