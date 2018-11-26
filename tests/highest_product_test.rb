require 'minitest/autorun'
require 'minitest/pride'
require './lib/highest_product_of_integers'

class HighestProductTest < Minitest::Test
  def test_it_gets_highest_product
    expected = 8 * 7 * 9
    input = [8, 4, 7, 3, 9]
    assert_equal expected, array_of_ints(input)
  end
  def test_can_take_negatives_product
    expected = 4 * -3 * -7
    input = [-8, 4, -7, -3, -9]
    assert_equal expected, array_of_ints(input)
  end
end
