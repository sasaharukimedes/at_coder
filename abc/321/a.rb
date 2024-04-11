# frozen_string_literal: true

N = gets.to_i
D = [].freeze
while N.positive?
  D.append(N % 10)
  N /= 10
end
D.reverse!

(1...D.length).each do |i|
  if D[i - 1] <= D[i]
    puts 'No'
    exit
  end
end

puts 'Yes'

# N = int(input())
# D = []
# while N>0:
#     D.append(N%10)
#     N //= 10
# D.reverse()

# for i in range(1,len(D)):
#     if D[i-1]<=D[i]:
#         print("No")
#         exit()

# print("Yes")
