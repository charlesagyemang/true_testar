class RegistrationsController < Devise::RegistrationsController
  before_filter :load_tests
  # def after_sign_up_path_for(resource)
  #   :userdash_index
  # end
  #
  # def after_sign_in_path_for(resource)
  #   :userdash_index
  # end

  def account_update_params
    params.require(:user).permit(:firstname,
                                 :surname,
                                 :email,
                                 :password,
                                 :password_confrim,
                                 :current_password,
                                 :phone_number,
                                 :location,
                                 :gender,
                                 :age,
                                 :occupation,
                                 :interests,
                                 :mobile_money_number,
                                 :alternative_email,
                                 :nationality,
                                 :small_bio,
                                 :date_of_birth,
                                 :educational_background,
                                 :marital_status)
  end

  def after_update_path_for(resource)
    :userdash_profile
  end

  private
    def load_tests
      @tests = Test.all
    end

end
