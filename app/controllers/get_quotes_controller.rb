class GetQuotesController < ApplicationController
  def index
    @testowner = current_testowner
  end
end
