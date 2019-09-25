# coding: utf-8
# 목록 9-11: 클래스 메서드를 선언한 후 호출하기

p self
p Module.nesting

class Quote
  p self
  p Module.nesting

  class << self
    p self
    p Module.nesting

    def class_method
      p self
      p Module.nesting
    end
  end
end

Quote.class_method
# => Quote
# => [#<Class:Quote>, Quote]
