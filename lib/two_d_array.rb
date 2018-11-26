# There are 16 hourglasses in arr, and an hourglass sum is
# the sum of an hourglass' values. Calculate the hourglass sum for every
# hourglass in arr, then print the maximum hourglass sum.



# -9 -9 -9  1 1 1
#  0 -9  0  4 3 2
# -9 -9 -9  1 2 3
#  0  0  8  6 6 0
#  0  0  0 -2 0 0
#  0  0  1  2 4 0

# we calculate the following values

# -63, -34, -9, 12,
# -10, 0, 28, 23,
# -27, -11, -2, 10,
# 9, 17, 25, 18

# our highest hourglass value is 28

# 0 4 3
#   1
# 8 6 6


def hourglassSum(arr)
    new_arr = []
    4.times do |j|
        4.times do |i|
            new_arr.push(arr[j][i] + arr[j][i + 1] + arr[j][i + 2] +
              arr[j + 1][i + 1] + arr[j + 2][i] +
              arr[j + 2][i + 1] + arr[j + 2][i + 2])
        end
    end
    new_arr.max
end
