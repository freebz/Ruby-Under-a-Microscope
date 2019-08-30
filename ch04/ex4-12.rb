# coding: utf-8
# 목록 4-12: 루비에 기대하지 못했던 키워드 인수를 넘겨주면 예외를 발생시킨다.

def add_two(a: 2, b: 3)
  a+b
end

puts add_two(c: 9)
# => unknown keyword: c (ArgumentError)
