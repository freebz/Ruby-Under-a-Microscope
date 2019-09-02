# coding: utf-8
# 목록 6-13: 모듈을 클래스로 include하는 또 다른 예

module Professor
  def lectures; end
end

class Mathematician
  attr_accessor :first_name
  attr_accessor :last_name
  include Professor
end
