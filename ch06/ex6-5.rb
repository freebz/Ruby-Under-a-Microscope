# coding: utf-8
# 목록 6-5: 이제 모듈 하나를 include하고 상위클래스를 하나 가지는 클래스를 정의했다.

class Person
  attr_accessor :first_name
  attr_accessor :last_name
end

module Professor
  def lectures; end
end


class Mathematician < Person
  include Professor
end
