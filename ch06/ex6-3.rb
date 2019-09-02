# coding: utf-8
# 목록 6-3: Person은 Mathematician 클래스의 상위클래스다.

class Person
end

class Mathematician < Person
  attr_accessor :first_name
  attr_accessor :last_name
end
