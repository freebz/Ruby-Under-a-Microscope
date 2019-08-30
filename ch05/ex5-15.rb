# coding: utf-8
# 목록 5-15: 루비는 특정 클래스와 자신의 모든 하위클래스 사이에서 클래스 변수를 공유한다.

class Mathematician
  @@type = "General"
  def self.type
    @@type
  end
end

class Statistician < Mathematician
  @@type = "Statistics"
end

puts Statistician.type
# => "Statistics"
puts Mathematician.type
# => "Statistics"
