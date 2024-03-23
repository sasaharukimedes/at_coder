S, P = gets.split.map(&:to_i)
(1..1000050).each do |i|
  if i * (S - i) == P
    puts "Yes"
    exit
  end
end
puts "No"
