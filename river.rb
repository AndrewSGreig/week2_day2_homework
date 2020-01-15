class River

  attr_reader :route, :destination

  def initialize(name,fish)
    @river_name = name
    @fish = fish
  end

  def get_name
    return @river_name
  end

  def add_fish_to_river(name, type)
    @fish.push(name)
  end

  def fish_count()
    return @fish.count()
  end

  def remove_fish(name)
    # p @fish.count
    @fish.delete(name)
    # p @fish.count
  end



end
