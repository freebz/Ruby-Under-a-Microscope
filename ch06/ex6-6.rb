# coding: utf-8
# 목록 6-6: 두 개의 모듈을 하나의 클래스로 include하기

class Mathematician < Person
  include Professor
  include Employee
end
