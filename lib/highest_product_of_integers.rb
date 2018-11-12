# Given an array of integers,
# find the highest product you can get
 # from three of the integers
 # The input array_of_ints will always have at least three integers.

def array_of_ints(arr)
  return arr[0] * arr[1] * arr[2] if arr.length == 3

  comp_arr = arr.pop(3).sort

  arr.each do |num|
    if num > comp_arr[2]
      comp_arr.push(num)
      comp_arr.shift
    elsif num > comp_arr[1]
      comp_arr[0] = comp_arr[1]
      comp_arr[1] = num
    elsif num > comp_arr[0]
      comp_arr[0] = num
    end
  end
  comp_arr[0] * comp_arr[1] * comp_arr[2]

end
