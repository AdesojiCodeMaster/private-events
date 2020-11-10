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
end
