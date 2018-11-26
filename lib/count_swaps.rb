# Complete the function countSwaps in the editor below. It should print the three lines required, then return.
# countSwaps has the following parameter(s):
# a: an array of integers .

def count_swaps(a)
  swaps = 0
  for i in 0..a.length - 1
      for j in 0..a.length - 1
          if a[j + 1] && a[j] > a[j + 1]
              temp = a[j + 1]
              a[j + 1] = a[j]
              a[j] = temp
              swaps += 1
          end
      end
  end
  return "Array is sorted in #{swaps} swaps."
end
