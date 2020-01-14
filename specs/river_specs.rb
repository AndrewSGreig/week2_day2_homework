require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative("../river.rb")
require_relative("../bears.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Frank")
    # @bears = Bear.new("Yogi")

  end


  def test_get_river
    assert_equal("Amazon", @river.get_name)
  end

  def test_count_fish
    @river.add_fish_to_river("Fred")
    # @fish.name.count()
    
    assert_equal(1, @river.fish_count())
  end

  # def test_get_bear
  #
  # end





end
