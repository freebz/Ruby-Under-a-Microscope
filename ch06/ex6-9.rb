# coding: utf-8
# 목록 6-9: Professor 모듈은 Mathematician 클래스로 include하기

module Professor
end

class Mathematician
  attr_accessor :name
  include Professor
end
