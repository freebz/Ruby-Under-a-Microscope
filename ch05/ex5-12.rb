# coding: utf-8
# 목록 5-12: 클래스 인스턴스 변수를 생성하기

class Mathematician
  @type = "General"
  def self.type
    @type
  end
end

puts Mathematician.type
# => "General"
