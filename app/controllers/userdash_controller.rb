class UserdashController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = current_user
  end

  def profile
    @user = current_user
  end
end
