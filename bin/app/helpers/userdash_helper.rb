module UserdashHelper
  def get_email
    current_user.email
  end

  def get_name
    current_user.email[0...get_email.index('@')].capitalize
  end

end
