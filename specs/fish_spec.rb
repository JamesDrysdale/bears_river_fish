require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../fish.rb')

class FishTest < MiniTest::Test

    def setup
        @fish = Fish.new("Flounder")
    end


    def test_can_create_fish()
        assert_equal(Fish, @fish.class())
    end

    def test_fish_name()
        assert_equal("Flounder", @fish.name())
    end

    
end