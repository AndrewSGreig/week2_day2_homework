class River

  attr_reader :route, :destination

  def initialize(name)
    @river_name = name
    @fish = []
  end

  def get_name
    return @river_name
  end

  def add_fish_to_river(name)
    @fish.push(name)
  end

  def fish_count()
    return @fish.count()
  end


end
