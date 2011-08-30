#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../../test_helper'

class Puzzles::Basic::SquareTest < Test::Unit::TestCase

  include Puzzles::Magic

  # TODO: better tests

  def test_no_argument
    assert !square?
  end

  def test_second_order
    assert !square?(*(1..4).map { rand 10 })
  end

  def test_saturn
    saturn = [4, 9, 2, 3, 5, 7, 8, 1, 6]
    assert square?(*saturn)
  end

  def test_jupiter
    jupiter = [4, 14, 15, 1, 9, 7, 6, 12, 5, 11, 10, 8, 16, 2, 3, 13]
    assert square?(*jupiter)
  end

end
