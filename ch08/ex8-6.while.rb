# coding: utf-8
# 목록 8-6: while 루프를 이용하여 루비로 작성한 1부터 10까지 더하기

sum = 0
i = 1
while i <= 10
  sum += i
  i += 1
end
puts "Sum: #{sum}"
