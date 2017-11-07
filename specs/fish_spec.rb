require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Steve")
  end

  def test_name
    assert_equal("Steve", @fish1.name)
  end

end
