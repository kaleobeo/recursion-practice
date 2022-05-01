def flatten_rec(array, result=[])
  array.each do |element|
    if element.is_a?(Array)
      result = flatten_rec(element, result)
    else
      result << element
    end
  end
  result
end

# p flatten_rec([[1, [8, 9]], [3, 4]])


map = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def roman_rec(map, num, result = '')

  return result if num == 0
  char_value = map.keys.find { |val| val <= num }
  num -= char_value
  result << map[char_value]
  roman_rec(map, num, result)
end

# p roman_rec(map, 44)

def roman_to_int(map, string, num = 0)
  return num if string.length.zero?
  digit = string.chars.last(2).join
  if map.values.include?(digit)
    num += map.key(digit)
    roman_to_int(map, string.chars[0...-2].join, num)
  else
    num += map.key(string[-1])
    roman_to_int(map, string.chars[0...-1].join, num)
  end
end

p roman_to_int(map, 'XCIV')