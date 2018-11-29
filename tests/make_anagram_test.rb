require 'minitest/autorun'
require 'minitest/pride'
require './lib/make_anagram'

class MakeAnagramTest < Minitest::Test
  def test_it_counts_deletions_necessary_to_make_anagram
    expected = 30
    a = "fcrxzwscanmligyxyvym"
    b = "jxwtrhvujlmrpdoqbisbwhmgpmeoke"
    assert_equal expected, makeAnagram(a, b)
  end
end
