class TestownersController < ApplicationController
  before_action :authenticate_testowner!
  def profile
    @testowner = current_testowner
    @tests = @testowner.tests
  end
end
