s = gets.chomp

if s[0] == '<' && s[-1] == '>' && s[1..-2] == '=' * (s.length - 2)
  puts 'Yes'
else
  puts 'No'
end
