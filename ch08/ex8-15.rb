# coding: utf-8
# 목록 8-15: 동일한 스코프에서 lambda를 두 번 호출하기

i = 0
increment_function = lambda do
  puts "Incrementing from #{i} to #{i+1}"
  i += 1
end
decrement_function = lambda do
  i -= 1
  puts "Decrementing from #{i+1} to #{i}"
end
