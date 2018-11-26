require 'minitest/autorun'
require 'minitest/pride'
require './lib/minimum_amount_of_bribes'

class MinimumBribesTest < Minitest::Test
  def test_it_gets_min_bribes
    expected = 7
    input = [1, 2, 5, 3, 7, 8, 6, 4]
    assert_equal expected, minimumBribes(input)
  end
  def test_can_take_negatives_product
    expected = "Too chaotic"
    input = [5, 1, 2, 3, 7, 8, 6, 4]
    assert_equal expected, minimumBribes(input)
  end
end
