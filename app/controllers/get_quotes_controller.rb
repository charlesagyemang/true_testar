class GetQuotesController < ApplicationController
  def index
    @testowner = current_testowner
    @tests = @testowner.tests
  end 
end
