class Bear

  attr_accessor :name, :fishes_in_stomach

  def initialize(name, fishes_in_stomach)
    @name = name
    @fishes_in_stomach = fishes_in_stomach || []
  end

  def contents
    return @fishes_in_stomach.length
  end

  def eat_fish(fish, river)
    @fishes_in_stomach.push(fish)
    river.remove_fish(fish)
  end

  def roar
    return "ROAR"
  end
end
