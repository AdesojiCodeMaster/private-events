class UsersController < ApplicationController
  before_action :authenticate_user!
  # user controller actions
  def index
    @users = User.all
    @created_events = current_user.events
    @past_events = current_user.attended_events.previous
    @upcoming_events = current_user.attended_events.upcoming
  end

  def show
    @user = User.find(current_user.id)
  end
end
