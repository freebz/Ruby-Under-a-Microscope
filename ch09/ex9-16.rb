# coding: utf-8
# 목록 9-16: instance_eval 내의 코드는 obj의 인스턴스 변수에 접근할 수 있다.

class Quote
  def initialize
    @str = "The quick brown fox"
  end
end
str2 = "jumps over the lazy dog."
obj = Quote.new
obj.instance_eval do
  puts "#{@str} #{str2}"
end
