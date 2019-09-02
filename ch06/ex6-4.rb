# coding: utf-8
# 목록 6-4: 이제 이름 속성은 Person 상위크래스에 존재한다.

class Person
  attr_accessor :first_name
  attr_accessor :last_name
end

class Mathematician < Person
end
