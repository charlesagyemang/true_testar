class TestsController < ApplicationController
  before_action :authenticate_testowner!
  def index
    @company = current_testowner
    @tests = @company.tests
    @testowner = current_testowner
  end

  def new
    @context = current_testowner
    @test = @context.tests.new
    @tests = @context.tests
    @company = current_testowner
    @testowner = current_testowner
  end

  def create
    @context = current_testowner
    @test = @context.tests.new(test_params)
    if @test.save
      redirect_to testowner_tests_path, notice: "Experience successfully added"
    else
      render :new
    end
  end


  def edit
    @context = current_testowner
    @tests = @context.tests
    @company = current_testowner
    @test = @context.tests.find(params[:id])
  end

  def update
    @context = current_testowner
    @test  = @context.tests.find(params[:id])
    if @test.update_attributes(test_params)
      redirect_to testowner_tests_path, notice: "The interaction has been added"
    end
  end

  def destroy
    @context = current_testowner.tests.find(params[:id])
  if @context.destroy
    redirect_to testowners_profile_path, notice: "Device Deleted successfully"
  end
  end

  private
    def test_params
      params.require(:test).permit(:title,             :instructions,
                                   :start_date,        :end_date,
                                   :review_date,       :review_date,
                                   :number_of_testers, requirements:[],
                                   location:[])
    end
end
