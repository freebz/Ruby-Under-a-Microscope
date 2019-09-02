# coding: utf-8
# 목록 6-16: Professor 모듈을 Mathematician 클래스로 include한 후에 그 모듈에 또 다른 모듈을 include하기

module Employee
  def hire_date; end
end

module Professor
  include Employee
end
