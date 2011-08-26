
class Test::Unit::TestCase

  include Puzzles::Basic

  def assert_biggest_sum_of_square(numbers, x, y = 0)
    assert_equal(biggest_sum_of_square(*numbers),
                 x * x + y * y,
                 "Called biggest_sum_of_square with " +
                 "*#{numbers.inspect} as argument")
  end

end
