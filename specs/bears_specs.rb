require("mintest/autorun")
require("mintest/Reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bears")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test
  def setup()
    @bear_name = "Yogi"
    @bear_type = "Grizzly"
  end

end
