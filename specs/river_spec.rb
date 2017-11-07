require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestRiver < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Steve")
    @fish_2 = Fish.new("Bob")
    @fish_3 = Fish.new("Randy")

    @river_1 = River.new("Amazon", [@fish_1, @fish_2, @fish_3])
  end

  def test_name
    assert_equal("Amazon", @river_1.name)
  end

  def test_number_of_fishes
    assert_equal(3, @river_1.number_of_fishes)
  end

  def test_remove_fish
    @river_1.remove_fish(@fish_1)
    assert_equal(2, @river_1.number_of_fishes)
  end
end
