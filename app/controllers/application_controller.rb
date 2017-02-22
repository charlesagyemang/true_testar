class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  #
  def after_sign_up_path_for(resource)
    if resource.class == User
      :userdash_index
    elsif resource.class == Company
      :companies_profile
    end
  end

  def after_sign_in_path_for(resource)
    if resource.class == User
      :userdash_index
    elsif resource.class == Company
      :companies_profile
    end
  end

end
