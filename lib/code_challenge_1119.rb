# const kv = KV()
# kv.set('foo', 'bar')
# console.log(kv.get('foo')) // 'bar'
#
# const kv = KV()
# const timestamp = kv.set('foo', 'bar')
# setTimeout(() => {
#   kv.set('foo', 'bar2')
#   console.log(kv.get('foo', timestamp)) // 'bar'
#   console.log(kv.get('foo')) // 'bar2'
# }, 1000)
#
# const kv = KV()
# const timestamp = kv.set('foo', 'bar')
# setTimeout(() => {
#   const otherTimestamp = kv.set('foo', 'bar2')
#   console.log(kv.get('foo', timestamp + 2000)) // 'bar'
#   console.log(kv.get('foo', timestamp + 2001)) // 'bar'
#   console.log(kv.get('foo', timestamp + 2998)) // 'bar'
#   console.log(kv.get('foo')) // 'bar2'
#   console.log(kv.get('foo', otherTimestamp)) // 'bar2'
#   console.log(kv.get('foo', otherTimestamp + 1001)) // 'bar2'
# }, 3000)

class KV

  def initialize
    @hash = {}
  end

  def set(key, value)
    time = Time.now
    @hash[key] ? @hash[key][time] = value : @hash[key] = {time => value}
    time
  end

  def get(key, timestamp = nil)
    if @hash[key]
      return @hash[key][timestamp] if timestamp && @hash[key][timestamp]
      nearest_timestamp(key, timestamp)
    end
  end

  def nearest_timestamp(key, timestamp)
    times = @hash[key].keys
    return @hash[key][times.last] if !timestamp || timestamp > times.last
    times.each_with_index do |time, i|
      return @hash[key][time] if timestamp > time && timestamp < times[i + 1]
    end
  end
end
