# Function Description
#
# Complete the function minimumBribes in the editor below. It must print an integer representing the minimum number of bribes necessary, or Too chaotic if the line configuration is not possible.
#
# minimumBribes has the following parameter(s):
#
# q: an array of integers

def minimumBribes(q)
    moves = 0
    q.each_with_index do |num, index|
        if num > index + 1 && (num - (index + 1)) <= 2
            moves += (num - (index + 1))
        elsif (num - (index + 1)) > 2
            puts "Too chaotic"
            return
        end
    end
    puts moves
end
