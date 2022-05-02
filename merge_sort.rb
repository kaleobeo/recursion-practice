# frozen_string_literal: true

def merge_sort(array)
  return array if array.length < 2

  midpoint = array.length / 2
  left_half = array[0...midpoint]
  right_half = array[midpoint..-1]
  left_half = merge_sort(left_half)
  right_half = merge_sort(right_half)

  merge(left_half, right_half)
end

def merge(left, right)
  output = []
  until left.empty? && right.empty?
    return output.push(right.shift) if left.empty?
    return output.push(left.shift) if right.empty?

    output.push(left[0] < right[0] ? left.shift : right.shift)
  end
end

test_arr = [4, 8, 6, 2, 1, 7, 5, 3]
base_arr = [2]

p merge_sort(test_arr)
p merge_sort(base_arr)
