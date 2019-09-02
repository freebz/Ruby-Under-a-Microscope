# coding: utf-8
# 목록 6-10: 각 Mathematician 객체의 name 속성 앞에 Prof. 타이틀을 표시하는 어색한 방법

module Professor
end

class Mathematician
  attr_accessor :name
  include Professor
  def name
    "Prof. #{@name}"
  end
end
