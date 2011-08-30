
class Test::Unit::TestCase

  include Puzzles::Basic

  def assert_biggest_sum_of_square(numbers, x, y = 0)
    assert_equal(x * x + y * y,
                 biggest_sum_of_square(*numbers),
                 "Called biggest_sum_of_square with " +
                 "*#{numbers.inspect} as argument")
  end

end
