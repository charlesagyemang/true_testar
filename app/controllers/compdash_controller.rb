class CompdashController < ApplicationController
  def index
    @user = current_user
    @tests = Test.all
  end
end
