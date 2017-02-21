class RegisterAsCompanyController < ApplicationController
  def login
    @user = current_user
  end

  def signup
    @user = current_user
  end
end
