require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative("../river.rb")
require_relative("../bears.rb")
require_relative("../fish.rb")

class TestFish < MiniTest::Test
  def setup()
    @fish = Fish.new("Frank")

    # @customer = Customer.new("Jack Jarvis", 1000)


  end







end
