class ExperiencesController < ApplicationController
  before_action :authenticate_user!
  def new
    @user = current_user
  end

  def edit
  end
end
