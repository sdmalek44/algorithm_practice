require 'minitest/autorun'
require 'minitest/pride'
require './lib/toy_prices'

class ToyPricesTest < Minitest::Test
  def test_it_gets_maximium_toys
    prices = [1, 12, 5, 111, 200, 1000, 10]
    k = 50
    assert_equal 4, maximum_toys(prices, k)

    prices = [3, 7, 2, 9, 4]
    k = 15
    assert_equal 3, maximum_toys(prices, k)
  end
end
