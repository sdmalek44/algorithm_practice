# Function Description
#
# Complete the makeAnagram function in the editor below. It must return an integer representing the minimum total characters that must be deleted to make the strings anagrams.
#
# makeAnagram has the following parameter(s):
#
# a: a string
# b: a string
#
# Sample Input
#
# cde
# abc
#
# Sample Output
#
# 4

def makeAnagram(a, b)
    count = 0
    shared = 0
    a_table = a.chars.inject(Hash.new(0)) do |acc, char|
        acc[char] += 1
        acc
    end

    b.chars.each do |char|
        if a_table[char] > 0
            shared += 1
            a_table[char] -= 1
        else
            count += 1
        end
    end
    count + (a.length - shared)
end
