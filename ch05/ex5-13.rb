# coding: utf-8
# 목록 5-13: 클래스 변수 생성하기

class Mathematician
  @@type = "General"
  def self.type
    @@type
  end
end

puts Mathematician.type
# => "General"
