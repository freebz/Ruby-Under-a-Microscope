# coding: utf-8
# 목록 5-14: 클래스와 하위클래스는 각각 자신의 인스턴스 변수를 가진다.

class Mathematician
  @type = "General"
  def self.type
    @type
  end
end

class Statistician < Mathematician
  @type = "Statistics"
end

puts Statistician.type
# => "Statistics"
puts Mathematician.type
# => "General"
