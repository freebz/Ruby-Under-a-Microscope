# coding: utf-8
# 목록 4-7: 하나의 인스턴스 변수와 접근자(accessor) 메서드들을 가지는 루비 클래스

class InstanceVariableTest
  def var
    @var
  end
  def var=(val)
    @var = val
  end
end
