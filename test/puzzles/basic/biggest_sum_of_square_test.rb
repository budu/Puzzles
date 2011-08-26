#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../../test_helper'
require File.dirname(__FILE__) + '/biggest_sum_of_square_helper'

class Puzzles::Basic::BiggestSumOfSquareTest < Test::Unit::TestCase

  def test_no_argument
    assert_equal 0, biggest_sum_of_square
  end

  def test_1_argument
    (0..100).each do |x|
      assert_biggest_sum_of_square [x], x
    end
  end

  def test_2_arguments
    100.times do
      x, y = [rand(100), rand(100)]
      assert_biggest_sum_of_square [x, y], x, y
    end
  end

  def test_many_arguments
    100.times do
      size = rand(10) + 3
      x, y = [rand(100) + 100, rand(100) + 100]
      numbers = (0...(size - 2)).map { rand(100) }
      numbers << x << y
      assert_biggest_sum_of_square numbers.shuffle, x, y
    end
  end

end
