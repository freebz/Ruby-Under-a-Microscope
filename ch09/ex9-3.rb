# coding: utf-8
# 목록 9-3: class << self를 이용하여 클래스 메서드 정의하기

class Quote
  class << self
    def display
      puts "The quick brown fox jumped over the lazy dog."
    end
  end
end
