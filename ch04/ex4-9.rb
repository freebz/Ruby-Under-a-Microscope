# coding: utf-8
# 목록 4-9: 루비가 해시를 이용해서 키워드 인수를 실행한다는 것을 설명한다.

class Hash
  def key?(val)
    puts "Looking for key #{val}"
    false
  end
end

def add_two(a: 2, b: 3)
  a+b
end

puts add_two(a: 1, b: 1)
