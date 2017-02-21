class PointsController < ApplicationController
  before_action :authenticate_user!
  def my_points
    @user = current_user
  end

  def redeem_points
    @user = current_user
  end
end
