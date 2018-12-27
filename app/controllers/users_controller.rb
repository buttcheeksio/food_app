class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      flash[:success] = "You successfully made a new user!"
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render :new
    end

  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
