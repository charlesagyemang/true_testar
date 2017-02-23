class TestsController < ApplicationController
  before_action :authenticate_company!
  def index
    @company = current_company
    @tests = @company.tests
  end

  def new
    @context = current_company
    @test = @context.tests.new
    @tests = @context.tests
    @company = current_company
  end

  def create
    @context = current_company
    @test = @context.tests.new(test_params)
    if @test.save
      redirect_to company_tests_path, notice: "Experience successfully added"
    else
      render :new
    end
  end


  def edit
    @context = current_company
    @tests = @context.tests
    @company = current_user
    @test = @context.tests.find(params[:id])
  end

  def update
    @context = current_company
    @test  = @context.tests.find(params[:id])
    if @test.update_attributes(test_params)
      redirect_to company_tests_path, notice: "The interaction has been added"
    end
  end

  def destroy
    @context = current_company.tests.find(params[:id])
  if @context.destroy
    redirect_to companies_profile_path, notice: "Device Deleted successfully"
  end
  end

  private
    def test_params
      params.require(:test).permit(:title,        :requirements,
                                   :instructions, :start_date,
                                   :end_date,     :review_date,
                                   :review_date)
    end
end
