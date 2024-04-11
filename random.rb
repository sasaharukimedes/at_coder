# frozen_string_literal: true

t = Thread.new do
  p 'start'
  sleep 5
  p 'end'
end
p 'wait'
t.join
