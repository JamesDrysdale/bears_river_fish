require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test
    
    def setup
        @river = River.new("Tyne")
        @fish1 = Fish.new("Flounder")
        @fish2 = Fish.new("Dory")
        @fish3 = Fish.new("Echo")
    end


    def test_can_create_river()
        assert_equal(River, @river.class())
    end

    def test_river_name()
        assert_equal("Tyne", @river.name())
    end

    def test_no_fish()
        assert_equal(0, @river.fish_count())
    end

    def test_add_one_fish()
        @river.add_fish(@fish1)
        assert_equal(1, @river.fish_count())
    end

end