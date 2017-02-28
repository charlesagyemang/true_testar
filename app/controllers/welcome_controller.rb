class WelcomeController < ApplicationController
    def index
     @user = current_user
     @tests = Test.all
     if user_signed_in? || testowner_signed_in?
      if current_user
        redirect_to userdash_index_path
      else
        redirect_to testowners_profile_path
      end
     end
    end
end
