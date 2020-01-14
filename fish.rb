class Fish

  attr_accessor :fish_name

  def initialize(name)
    @fish_name = name
  end

  def get_fish
    return @fish_name
  end

end
