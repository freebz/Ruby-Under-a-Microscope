# coding: utf-8
# 목록 9-10: 메타클래스 스코프 선언하기

p self
p Module.nesting

class Quote
  p self
  p Module.nesting

  class << self
    p self
    # => #<Class:Quote>
    p Module.nesting
    # => [#<Class:Quote>, Quote]
  end
end
