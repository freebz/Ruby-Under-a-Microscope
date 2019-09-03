# coding: utf-8
# 목록 8-7: 범위 객체와 블록을 이용하여 루비로 작성한 1부터 10까지 더하기

sum = 0
(1..10).each do |i|
  sum += i
end
puts "Sum: #{sum}"
