class Fish

  attr_accessor :fishes, :fish_name

  def initialize(name, type)
    @fish_name = name
    @fish_type = type
  end

  def get_fish
    return @fish_name
  end

  # def remove_fish(name)
  #   p @fish_name
  #   # @fish_name.delete(name)
  #   p @fish_name
  # end

end
