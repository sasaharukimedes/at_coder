n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!

(1..n).each do |i|
  j = a.bsearch_index { |x| x >= i }
  if j.nil?
    puts -1
  else
    puts a[j] - i
  end
end