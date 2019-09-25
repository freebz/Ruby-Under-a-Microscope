# coding: utf-8
# 목록 9-14: 블록 내의 코드는 주변 스코프의 변수들에 접근할 수 있다.

a = 2
b = 3
10.times do
  puts a+b
end
