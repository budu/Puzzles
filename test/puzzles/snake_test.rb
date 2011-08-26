#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/snake_helper'

class Puzzles::SnakeTest < Test::Unit::TestCase

  def test_size_1
    [:forward, :same, :backward].each do |d|
      assert_equal 0, my_turn_in(1, 1, d, 1)
    end
  end

  def test_my_position_1_size_1_to_11
    (2..11).each do |size|
      args_t = generate_my_turn_in_args_table(size, 1)
      results = (0..((size - 1) * 2 + 1)).to_a.reverse
      assert_my_turn_in_results args_t, results
    end
  end

  def test_my_position_over_1_size_5
    results = [
      [1, 7, 6, 5, 4, 3, 2, 1, 3, 2],
      [2, 1, 5, 4, 3, 2, 1, 5, 4, 3],
      [3, 2, 1, 3, 2, 1, 7, 6, 5, 4],
      [4, 3, 2, 1, 0, 9, 8, 7, 6, 5]
    ]

    assert_my_turn_in_results_my_position_over_1 5, results
  end

  def test_my_position_over_1_size_8
    results = [
      [1, 13, 12, 11, 10, 9, 8, 7, 6 , 5 , 4 , 3 , 2 , 1 , 3, 2],
      [2, 1 , 11, 10, 9 , 8, 7, 6, 5 , 4 , 3 , 2 , 1 , 5 , 4, 3],
      [3, 2 , 1 , 9 , 8 , 7, 6, 5, 4 , 3 , 2 , 1 , 7 , 6 , 5, 4],
      [4, 3 , 2 , 1 , 7 , 6, 5, 4, 3 , 2 , 1 , 9 , 8 , 7 , 6, 5],
      [5, 4 , 3 , 2 , 1 , 5, 4, 3, 2 , 1 , 11, 10, 9 , 8 , 7, 6],
      [6, 5 , 4 , 3 , 2 , 1, 3, 2, 1 , 13, 12, 11, 10, 9 , 8, 7],
      [7, 6 , 5 , 4 , 3 , 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8],
    ]

    assert_my_turn_in_results_my_position_over_1 8, results
  end

end
