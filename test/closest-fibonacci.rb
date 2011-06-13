require 'helper'

class TestClosestFibonacci < Test::Unit::TestCase
  should "return nil if run on a negative number" do
    assert_equal nil, -1.closest_fibonacci
  end

  should "return self if used on a number that is a Fibonacci number" do
    assert_equal 0, 0.closest_fibonacci
    assert_equal 1, 1.closest_fibonacci
    assert_equal 144, 144.closest_fibonacci
  end

  should "return the closest fibonacci number less than self if self is not a Fibonacci number" do
    assert_equal 3, 4.closest_fibonacci
    assert_equal 5, 7.closest_fibonacci
    assert_equal 144, 156.closest_fibonacci
  end
end
