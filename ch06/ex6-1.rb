# coding: utf-8
# 목록 6-1: 모듈을 클래스로 include하기

module Professor
end

class Mathematician < Person
  include Professor
end
