require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river.rb")
require_relative("../bears.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Frank","herring")
    @bears = Bears.new("Yogi", "Grizzly")

  end


  def test_get_river
    assert_equal("Amazon", @river.get_name)
  end

  def test_count_river_fish
    @river.add_fish_to_river("Fred", "goldfish")
    assert_equal(1, @river.fish_count())
  end

  # def test_get_bear
  #   p @bears
  # end

  def test_bear_takes_fish
    #if fish_count isn't empty
    # => add fish to bear stomach array
    # => remove fish from river fish array

    # @river.add_fish_to_river("Frank", "cod")
    # @river.add_fish_to_river("Swimmer", "salmon")
    @river.add_fish_to_river("Goldie", "great white shark")


    if @river.fish_count > 0

      p "bear initial stomach count: " + @bears.bear_food_count.to_s()
      @bears.add_fish_to_stomach("Goldie")
      p "bear new stomach count: " + @bears.bear_food_count.to_s()


      p "initial number of fish in river: " + @river.fish_count.to_s()
      @river.remove_fish("Goldie")
      p "new number of fish in river: " + @river.fish_count.to_s()

    end
  end

  def test_bear_roar
    p @bears.bear_roar("roar")
  end


end
