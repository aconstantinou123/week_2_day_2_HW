class River

  attr_accessor :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes || []
  end

  def number_of_fishes
    return @fishes.length
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end
end
