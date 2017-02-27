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

  def link_recorgnizer (string)
  	www_index  = string.index('www.')
  	http_index = string.index('http')
  	com_index  = string.index('.com')
  	org_index  = string.index('.org')
  	net_index  = string.index('.net')

  	if http_index || www_index
  		if com_index || net_index || org_index
  			if com_index
  				if http_index
  					if string[http_index..com_index + 4][-1] == "."
  						string[http_index..com_index + 6]
  					else
  					 	string[http_index..com_index + 3]
  					end
  				elsif www_index
  					if string[www_index..com_index + 4][-1] == "."
  						"http://" + string[www_index..com_index + 6]
  					else
  					 	"http://" + string[www_index..com_index + 3]
  					end
  				end
  			elsif net_index
  				if http_index
  					if string[http_index..net_index + 4][-1] == "."
  						string[http_index..net_index + 6]
  					else
  					 	string[http_index..net_index + 3]
  					end
  				elsif www_index
  					if string[www_index..net_index + 4][-1] == "."
  						"http://" + string[www_index..net_index + 6]
  					else
  					 	"http://" + string[www_index..net_index + 3]
  					end
  				end
  			elsif org_index
  				if http_index
  					if string[http_index..org_index + 4][-1] == "."
  						string[http_index..org_index + 6]
  					else
  					 	string[http_index..org_index + 3]
  					end
  				elsif www_index
  					string[www_index..org_index + 3]
  					if string[www_index..org_index + 4][-1] == "."
  						"http://" + string[www_index..org_index + 6]
  					else
  					 	"http://" + string[www_index..org_index + 3]
  					end
  				end
  			end
  		end
  	else
  		"#"
  	end
  end
end
