# coding: utf-8
# 목록 9-18: 메서드를 생성하기 위해서 define_method를 사용하기

class Quote
  def initialize
    @str = "The quick brown fox jumps over the lazy dog"
  end
  define_method :display do
    puts @str
  end
end
