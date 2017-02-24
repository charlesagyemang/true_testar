class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    # @users = User.all
    @user = current_user
    @devices = @user.devices
    @tests = Test.all
    @tests.each do |t|
      @users = User.all.first(t.number_of_testers)
    end
  end

  def show
    @user = current_user
  end


end
