class DevicesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = context
    @devices = @user.devices
    @tests = Test.all
    @context = context
    @device = @context.devices.new
  end
  def new
    @context = context
    @device = @context.devices.new
    @devices = context.devices
    @user = current_user
    @tests = Test.all
  end

  def create
    @context = context
    @device = @context.devices.new(device_params)
    if @device.save
      redirect_to user_devices_path, notice: "Device successfully added"
    else
      render :new
    end
  end

  def edit
    @context = context
    @devices = context.devices
    @user = current_user
    @device = context.devices.find(params[:id])
    @tests = Test.all
  end

  def update
    @context = context
    @device = context.devices.find(params[:id])
    if @device.update_attributes(device_params)
      redirect_to user_devices_path, notice: "The interaction has been added"
    end
  end

  def destroy
    @context = context.devices.find(params[:id])
  if @context.destroy
    redirect_to users_index_path, notice: "Device Deleted successfully"
  end
  end
  private
    def device_params
      params.require(:device).permit!
    end

    def context
      User.find(params[:user_id])
    end

    def context_url(context)
      user_path(context)
    end
end
