require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')

class RiverTest < MiniTest::Test
    
    def setup
        @river = River.new("Tyne")
    end


    def test_can_create_river()
        assert_equal(River, @river.class())
    end

    def test_river_name()
        assert_equal("Tyne", @river.name())
    end

end