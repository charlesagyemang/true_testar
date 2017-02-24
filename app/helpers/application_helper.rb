module ApplicationHelper
  def get_email
    current_user.email.to_s
  end

  def get_name
    current_user.email[0...get_email.index('@')].to_s.capitalize
  end

  def get_testowner_name
    current_testowner.email[0...current_testowner.email.index('@')].to_s.capitalize
  end


  def get_firstname
    current_user.firstname.to_s.capitalize
  end

  def get_surname
    current_user.surname.to_s
  end

  def get_location
    current_user.location.to_s
  end

  def get_interests
    current_user.interests.to_s
  end

  def get_mobile_money_number
    current_user.mobile_money_number.to_s
  end

  def get_alternative_email
    current_user.alternative_email.to_s
  end

  def get_nationality
    current_user.nationality.to_s
  end

  def get_user_bio
    current_user.small_bio.to_s
  end

  def get_date_of_birth
    current_user.date_of_birth
  end

  def get_educational_background
    current_user.educational_background.to_s
  end

  def get_marital_status
    current_user.marital_status.to_s
  end

  def get_fullname
    fullname = get_firstname + " " + get_surname
    fullname.to_s
  end

  def get_phone_number
    current_user.phone_number.to_s
  end

  def get_gender
    current_user.gender.to_s
  end


  def get_age
    current_user.age.to_s
  end

  def get_today
    Date.today
  end

  def get_year
    get_today.to_s[0...4]
  end

  def get_month
    get_today.to_s[5...7]
  end

  def get_day
    get_today.to_s[8...10]
  end

  def compare_dates(date)
  (Date.today - date).to_i
  end

  def up_coming (date)
    if (compare_dates (date)).to_i < 0
      true
    else
      false
    end
  end

end
