require './test/test_helper.rb'
require './lib/two_d_array.rb'

class TwoDArrayTest < Minitest::Test
  def test_it_gets_highest_hourglass
    arr = [[-9, -9, -9,  1, 1, 1],
           [0, -9,  0,  4, 3, 2],
           [-9, -9, -9,  1, 2, 3],
           [0,  0,  8,  6, 6, 0],
           [0,  0,  0, -2, 0, 0],
           [0,  0,  1,  2, 4, 0]]
    expected = 28
    assert_equal expected, hourglassSum(arr)
  end

end
