require 'minitest/autorun'
require 'minitest/pride'
require './lib/mock_interview_1119'

class MockInterviewTest < Minitest::Test

  def test_it_can_set
    kv = KV.new
    actual = kv.set('foo', 'bar')

    assert_instance_of Time, actual
  end

  def test_it_get_specific_string_with_timestamp
    kv = KV.new
    time1 = kv.set('foo', 'bar')
    sleep(1)
    time2 = kv.set('foo', 'bar2')

    actual_1 = kv.get('foo', time1)
    assert_equal 'bar', actual_1


    actual_2 = kv.get('foo')
    assert_equal 'bar2', actual_2
  end

  def test_it_get_closest_timestamp
    kv = KV.new
    time1 = kv.set('foo', 'bar')
    sleep(3)
    time2 = kv.set('foo', 'bar2')

    assert_equal 'bar', kv.get('foo', time1 + 2)
    assert_equal 'bar', kv.get('foo', time1 + 2.01)
    assert_equal 'bar', kv.get('foo', time1 + 2.98)

    assert_equal 'bar2', kv.get('foo')
    assert_equal 'bar2', kv.get('foo', time2)
    assert_equal 'bar2', kv.get('foo', time2 + 1.01)
  end
end
