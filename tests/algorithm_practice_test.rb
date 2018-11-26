require 'minitest/autorun'
require 'minitest/pride'
require './lib/product_of_all_but_index.rb'
# assert_equal expected, actual
# assert boolean
# assert_instance_of expected, actual


class AlgorithemTest < Minitest::Test

  def test_it_gets_products_of_all_but_index
    actual = get_products_of_all_ints_except_at_index([1, 2, 3, 4])
    assert_equal [24, 12, 8, 6], actual
  end

  def test_it_gets_products_of_all_but_index_n2
    actual = productNumbers([1,2,3,4])
    assert_equal [24, 12, 8, 6], actual
  end

end
