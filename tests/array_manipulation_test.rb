require 'minitest/autorun'
require 'minitest/pride'
require './lib/array_manipulation.rb'

class ArrayManipulationTest < Minitest::Test

  def test_it_finds_element_with_highest_value_after_calculations
    n = 10
    queries = [[1, 5, 3], [4, 8, 7], [6, 9, 1]]
    actual = arrayManipulation(n, queries)

    assert_equal 10, actual
  end

  def test_larger_cases_for_highest_value
    n = 40
    queries = [
                [29, 40, 787],
                [9, 26, 219],
                [21, 31, 214],
                [8, 22, 719],
                [15, 23, 102],
                [11, 24, 83],
                [14, 22, 321],
                [5, 22, 300],
                [11, 30, 832],
                [5, 25, 29],
                [16, 24, 577],
                [3, 10, 905],
                [15, 22, 335],
                [29, 35, 254],
                [9, 20, 20],
                [33, 34, 351],
                [30, 38, 564],
                [11, 31, 969],
                [3, 32, 11],
                [29, 35, 267],
                [4, 24, 531],
                [1, 38, 892],
                [12, 18, 825],
                [25, 32, 99],
                [3, 39, 107],
                [12, 37, 131],
                [3, 26, 640],
                [8, 39, 483],
                [8, 11, 194],
                [12, 37, 502]
              ]
    actual = arrayManipulation(n, queries)

    assert_equal 8628, actual
  end
end