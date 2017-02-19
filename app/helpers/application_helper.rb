module ApplicationHelper
  def get_email
    current_user.email
  end

  def get_name
    current_user.email[0...get_email.index('@')].capitalize
  end

  def get_firstname
    current_user.firstname
  end

  def get_surname
    current_user.surname
  end

  def get_location
    current_user.location
  end

  def get_interests
    current_user.interests
  end

  def get_mobile_money_number
    current_user.mobile_money_number
  end

  def get_alternative_email
    current_user.alternative_email
  end

  def get_nationality
    current_user.nationality
  end

  def get_user_bio
    current_user.small_bio
  end

  def get_date_of_birth
    current_user.date_of_birth
  end

  def get_educational_background
    current_user.educational_background
  end

  def get_marital_status
    current_user.marital_status
  end

  def get_fullname
    "#{ get_firstname } #{get_surname}"
  end

  def get_phone_number
    current_user.phone_number
  end

  def get_gender
    current_user.gender
  end


  def get_age
    current_user.age
  end
end
