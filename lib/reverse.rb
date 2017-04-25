def reverse(string)
  half_length = string.length / 2
  half_length.times { |i| string[i], string[-i - 1] = string[-i - 1], string[i] }
  p string
end

p 'Enter a string: '
string = gets.chomp

reverse(string)
