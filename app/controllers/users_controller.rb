class UsersController < ApplicationController
  before_action :authenticate_user!
  # user controller actions
  def index
    @users = User.all
  end

  def show
    @user = User.find(current_user.id)
    @created_events = Event.all
    @past_events = Event.past_events
    @upcoming_events = Event.upcoming_events
  end

  def create
    @user = User.new(user_params)
    @user.save

    flash.notice = "User #{@user.name} created!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
