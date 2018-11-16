
def minimumSwaps(arr)
  swaps = 0
  arr.each_with_index do |num, i|
    if num != i + 1
      t = arr.index(i + 1)
      temp = arr[t]
      arr[t] = arr[i]
      arr[i] = temp
      swaps += 1
    end
  end
  swaps
end
