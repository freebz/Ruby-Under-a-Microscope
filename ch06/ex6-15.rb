# coding: utf-8
# 목록 6-15: Professor 모듈을 Mathematician 클래스로 include한 후에 이 모듈에 새로운 메서드 추가하기

module Professor
  def primary_classroom; end
end

p fermat.methods.sort
# => [ ... :first_name, :first_name=, ... :last_name, :last_name=, :lectures,
# ... :primary_classroom, ... ]
