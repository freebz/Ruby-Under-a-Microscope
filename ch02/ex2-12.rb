# coding: utf-8
# 목록 2-12: 표준 인수와 이름 없는 인수 배열을 취하는 메서드

def complex_formula(a, b, *args, c)
  a + b + args.size + c
end
