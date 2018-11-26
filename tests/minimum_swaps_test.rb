require 'minitest/autorun'
require 'minitest/pride'
require './lib/minimum_swaps'

class MinimumSwapTest < Minitest::Test
  def test_it_gets_min_swaps
    expected = 3
    input = [4, 3, 1, 2]
    assert_equal expected, minimumSwaps(input)
  end
  def test_gets_min_swaps
    expected = 3
    input = [2, 3, 4, 1, 5]
    assert_equal expected, minimumSwaps(input)
  end
end
