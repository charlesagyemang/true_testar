class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @user = current_user
    @devices = @user.devices
  end

  def show
    @user = current_user
  end


end
