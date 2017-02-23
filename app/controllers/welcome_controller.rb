class WelcomeController < ApplicationController
  def index
   @user = current_user
   @tests = Test.all
  end
end
