# Function Description
#
# Complete the function minimumBribes in the editor below. It must print an integer representing the minimum number of bribes necessary, or Too chaotic if the line configuration is not possible.
#
# minimumBribes has the following parameter(s):
#
# q: an array of integers

def minimumBribes(q)
  sorted = [*1..q.length]
  moves = 0
  while q != sorted
      q.each_with_index do |num, i|
        if num > i + 1 && (num - (i + 1)) > 2
          return "Too chaotic"
        elsif q[i + 1] && num > q[i + 1]
          q[i] = q[i + 1]
          q[i + 1] = num
          moves += 1
        end
      end
  end
  return moves
end
