# coding: utf-8
# 목록 9-9: 새로운 클래스를 선언함으로써 self 값이 변경되고 렉시컬 스코프 스택에 새로운 항목이 생성된다.

p self
p Module.nesting

class Quote
  p self
  # => Quote
  p Module.nesting
  # => [Quote]
end
