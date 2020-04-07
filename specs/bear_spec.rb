require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')


class BearTest < MiniTest::Test

    def setup
        @bear = Bear.new("Vojtek")
        @fish1 = Fish.new("Flounder")
        @fish2 = Fish.new("Dory")
        @fish3 = Fish.new("Echo")
    end


    def test_can_create_bear()
        assert_equal(Bear, @bear.class())
    end

    def test_bear_name()
        assert_equal("Vojtek", @bear.name())
    end

    def test_bear_stomach__empty()
        assert_equal(0, @bear.stomach_contents())
    end

    def test_add_fish_to_bear()
         @river = River.new("Tyne")
        @river.add_fish(@fish1)
        @bear.stomach_contents(@river)
        assert_equal(1, @bear.fish_count())
     end
        

    
end