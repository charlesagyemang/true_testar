class AboutController < ApplicationController
  def index
    @user = current_user
    @tests = Test.all
    @company = Company.all
  end
end
