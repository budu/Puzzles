lib_dir = File.dirname(__FILE__) + '/../lib'

require 'test/unit'
$:.unshift lib_dir unless $:.include?(lib_dir)
require 'snake_puzzle'

class Test::Unit::TestCase

  def generate_my_turn_in_args_table(size, mp = 1)
    # WARNING: Compact code ahead!
    assert size > 0
    assert mp > 0 && mp <= size

    d = :forward
    cps = (1..size).to_a
    (cps + cps.reverse).map do |cp|
      d = if cp == size && d == :same
            :backward
          elsif cp == size || cp == 1 && d == :backward
            :same
          else
            d
          end
      [mp, cp, d, size]
    end
  end

  def assert_my_turn_in_results(args_t, results)
    args_t.zip(results).each do |(args, result)|
      assert_equal result, my_turn_in(*args)
    end
  end

  def assert_my_turn_in_results_my_position_over_1(size, results)
    (2..size).each do |mp|
      args_t = generate_my_turn_in_args_table(size, mp)
      assert_my_turn_in_results args_t, results[mp - 2]
    end
  end

end
