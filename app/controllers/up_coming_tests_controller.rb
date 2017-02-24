class UpComingTestsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @tests = Test.all  
  end
end
