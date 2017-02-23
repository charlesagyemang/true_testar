class CompaniesController < ApplicationController
  before_action :authenticate_company!
  def profile
    @company = current_company
    @tests = @company.tests
  end
end
