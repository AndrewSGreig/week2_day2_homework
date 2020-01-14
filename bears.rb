class Bears
  attr_accessor :bear_name

  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @stomach = []

  end

  def get_bear_name
    p @bear_name
    return @bear_name
  end

  def get_bear_type
    p @bear_type
    return @bear_type
  end









end
