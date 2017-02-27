module TestsHelper
  def checked_req(area)
    @test.requirements.nil? ? false : @test.requirements.match(area)
  end

  def checked_loc(area)
    @test.location.nil? ? false : @test.location.match(area)
  end

end
