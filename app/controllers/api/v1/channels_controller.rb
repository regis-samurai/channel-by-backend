class Api::V1::ChannelsController < ApiController
  before_action :authenticate_user

  def index
    @channels = current_user.channels.all
    render json: @channels, :status => 200
  end

  def show
    @channel = current_user.channels.find(params[:id])
    render json: @channel, :status => 200
  end
end
