# coding: utf-8
# 목록 6-18: 루비는 상위클래스에서 정의한 상수를 찾는다.

class MyClass
  SOME_CONSTANT = "Some value..."
end

class Subclass < MyClass
  p SOME_CONSTANT
end
