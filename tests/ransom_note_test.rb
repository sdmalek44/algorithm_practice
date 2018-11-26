require 'minitest/autorun'
require 'minitest/pride'
require './lib/ransom_note'

class RansomNoteTest < Minitest::Test
  def test_it_makes_magazine_hash
    input = ['the', 'bag', 'bag', 'of']
    expected = {'the' => 1, 'bag' => 2, 'of' => 1}
    assert_equal expected, magazine_hash(input)
  end
  def test_it_determines_if_note_can_be_made
    mag = ['the', 'bag', 'bag', 'of']
    note = ['the', 'bag']
    expected = 'Yes'
    assert_equal expected, check_magazine(mag, note)
  end
  def test_it_determines_if_note_cant_be_made
    mag = ['the', 'bag', 'bag', 'of']
    note = ['the', 'bag', 'things']
    expected = 'No'
    assert_equal expected, check_magazine(mag, note)
  end
end
