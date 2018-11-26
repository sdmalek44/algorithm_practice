require 'minitest/autorun'
require 'minitest/pride'
require './lib/count_swaps.rb'

class CountSwapTest < Minitest::Test
  def test_it_counts_swaps_with_bubble_sort
    input = [4, 2, 3, 1]
    expected = "Array is sorted in 5 swaps."
    assert_equal expected, count_swaps(input)
  end
end
