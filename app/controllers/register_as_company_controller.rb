class RegisterAsCompanyController < ApplicationController
  def login
    @user = current_user
    @tests = Test.all
  end

  def signup
    @user = current_user
    @tests = Test.all
  end
end
