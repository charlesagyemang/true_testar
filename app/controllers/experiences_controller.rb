class ExperiencesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = context
    @experiences = @user.experiences
  end
  def new
    @user = current_user
    @context = context
    @experience = @context.experiences.new
    @experiences = context.experiences
  end

  def create
    @context = context
    @experience = @context.experiences.new(experience_params)
    if @experience.save
      redirect_to user_experiences_path, notice: "Experience successfully added"
    else
      render :new
    end
  end

  def edit
    @context = context
    @experiences = context.experiences
    @user = current_user
    @experience = context.experiences.find(params[:id])
  end

  def update
    @context = context
    @experience = context.experiences.find(params[:id])
    if @experience.update_attributes(experience_params)
      redirect_to user_experiences_path, notice: "The Experience has been added"
    end
  end

  def destroy
    @context = context.experiences.find(params[:id])
  if @context.destroy
    redirect_to users_index_path, notice: "Device Deleted successfully"
  end
  end

  private
    def experience_params
      params.require(:experience).permit!
    end

    def context
      current_user
    end

    def context_url(context)
      user_path(context)
    end
end
