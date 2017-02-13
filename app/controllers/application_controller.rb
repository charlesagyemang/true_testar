class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_up_path_for(resource)
    :userdash_index
  end

  def after_sign_in_path_for(resource)
    :userdash_index
  end
  
end
