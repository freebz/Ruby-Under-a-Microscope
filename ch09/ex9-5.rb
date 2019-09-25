# coding: utf-8
# 목록 9-5: class <<를 이용하여 싱글레톤 메서드 추가하기

class Quote
end

some_quote = Quote.new
class << some_quote
  def display
    puts "The quick brown fox jumped over the lazy dog."
  end
end
