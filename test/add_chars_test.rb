require 'minitest/autorun'
require 'minitest/pride'
require './lib/alternating_chars'


class AlternatingCharactersTest < Minitest::Test

  def test_it_gets_number_of_removed_characters_to_make_alternating
    actual = alternatingCharacters("AAABABAB")
    assert_equal 2, actual
  end


end
