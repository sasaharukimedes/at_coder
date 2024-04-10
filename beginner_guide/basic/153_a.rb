h, a = gets.split.map(&:to_i)

def count?(h, a)
  counter = 0
  until h<=0 do
    h -= a
    counter +=1
  end
  counter
end

puts count?(h,a)
