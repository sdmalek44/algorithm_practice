
def minimumSwaps(arr)
  swaps = 0
  arr.each_with_index do |num, i|
    if num != i + 1
      t = i
      while arr[t] != i + 1
        t += 1
      end
      temp = arr[t]
      arr[t] = arr[i]
      arr[i] = temp
      swaps += 1
    end
  end
  swaps
end
