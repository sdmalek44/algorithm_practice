# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
#
# Write a method get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.
#
# For example, given:
#
#   [1, 7, 3, 4]
#
# your method would return:
#
#   [84, 12, 28, 21]
#
# by calculating:
#
#   [7 * 3 * 4,  1 * 3 * 4,  1 * 7 * 4,  1 * 7 * 3]
#
# Here's the catch: You can't use division in your solution!

# O(n**2)
def productNumbers(arr)
  arr.map do |num|
    new_arr = arr.clone
    new_arr.delete(num)
    new_arr.inject(1) do |col, number|
      col *= number
    end
  end
end

# O(n)
def get_products_of_all_ints_except_at_index(int_array)
if int_array.length < 2
  raise IndexError, 'Getting the product of numbers at other indices requires at least 2 numbers'
end

products_of_all_ints_except_at_index = []

product_so_far = 1
i = 0
while i < int_array.length
  products_of_all_ints_except_at_index[i] = product_so_far
  product_so_far *= int_array[i]
  i += 1
end

product_so_far = 1
i = int_array.length - 1
while i >= 0
  products_of_all_ints_except_at_index[i] *= product_so_far
  product_so_far *= int_array[i]
  i -= 1
end

return products_of_all_ints_except_at_index
end
