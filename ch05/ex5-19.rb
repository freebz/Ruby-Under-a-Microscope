# coding: utf-8
# 목록 5-19: class << self를 이용하여 클래스 메서드 정의하기

class Mathematician
  class << self
    def class_method
      puts "This is a class method."
    end
  end
end
