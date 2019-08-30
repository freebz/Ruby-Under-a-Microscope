# coding: utf-8
# 목록 5-11: attr_accessor를 사용하지 않고 작성한 동일한 클래스

class Mathematician
  def first_name
    @first_name
  end
  def first_name=(value)
    @first_name = value
  end
  def last_name
    @last_name
  end
  def last_name=(value)
    @last_name = value
  end
end
