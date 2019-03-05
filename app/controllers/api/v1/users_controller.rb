class Api::V1::UsersController < ApiController
  before_action :authenticate_user, only: [:index]

  def index
    @users = User.all
    render json: @users, :status => 200
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, :status => 201
    else
      render json: @user.errors.full_messages, :status => 422
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
