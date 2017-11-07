require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class TestBear < Minitest::Test

  def setup
    @fish_1 = Fish.new("Steve")
    @fish_2 = Fish.new("Bob")
    @fish_3 = Fish.new("Randy")

    @river_1 = River.new("Amazon", [@fish_1, @fish_2, @fish_3])

    @bear_1 = Bear.new("Yogi", [])

  end

  def test_name
    assert_equal("Yogi", @bear_1.name)
  end

  def test_contents_of_stomach
    assert_equal(0, @bear_1.contents)
  end

  def test_eat_fish
    @bear_1.eat_fish(@fish_1, @river_1)
    assert_equal(1, @bear_1.contents)
    assert_equal(2, @river_1.number_of_fishes)
  end

  def test_roar
    assert_equal("ROAR", @bear_1.roar)
  end

end
