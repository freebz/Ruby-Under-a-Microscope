# coding: utf-8
# 목록 9-17: 인스턴스 변수로부터 문자열을 표시하는 루비 클래스

class Quote
  def initialize
    @str = "The quick brown fox jumps over the lazy dog"
  end
  def display
    puts @str
  end
end
Quote.new.display
# => The quick brown fox jumps over the lazy dog
