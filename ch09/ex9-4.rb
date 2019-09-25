# coding: utf-8
# 목록 9-4: 메서드를 단일 객체 인스턴스로 추가하기

class Quote
end

some_quote = Quote.new
def some_quote.display
  puts "The quick brown fox jumped over the lazy dog."
end
