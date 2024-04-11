# frozen_string_literal: true

# n = gets.to_i
# p = gets.split.map(&:to_i)
# q = gets.to_i
# pairs = []
# q.times do
#   a, b = gets.split
#   pairs << [a, b]
# end

gets.to_i
p = gets.split.map(&:to_i)
q = gets.to_i
queries = q.times.map { gets.split.map(&:to_i) }

def process_queries(p, queries)
  queries.each do |a, b|
    puts p.index(a) < p.index(b) ? a : b
  end
end

process_queries(p, queries)
