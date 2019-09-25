# coding: utf-8
# 목록 9-21: proc 객체를 define_method로 넘기기

class Quote
  def initialize
    @str = "The quick brown fox"
  end
end
def create_method_using_a_closure
  str2 = "jumps over the lazy dog."
  lambda do
    puts "#{@str} #{str2}"
  end
end
Quote.send(:define_method, :display, create_method_using_a_closure)
Quote.new.display
