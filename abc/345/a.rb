# frozen_string_literal: true

s = gets.chomp

if s[0] == '<' && s[-1] == '>' && s[1..-2] == '=' * (s.length - 2)
  puts 'Yes'
else
  puts 'No'
end
s = gets.chomp
flag = true

flag = false if s[0] != '<'
flag = false if s[-1] != '>'

(1..s.size - 2).each do |i|
  flag = false if s[i] != '='
end

if flag
  puts 'Yes'
else
  puts 'No'
end
