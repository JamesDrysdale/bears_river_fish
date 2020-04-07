require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../bear.rb')

class BearTest < MiniTest::Test

    def setup
        @bear = Bear.new("Vojtek")
    end


    def test_can_create_bear()
        assert_equal(Bear, @bear.class())
    end

    def test_bear_name()
        assert_equal("Vojtek", @bear.name())
    end

    
end