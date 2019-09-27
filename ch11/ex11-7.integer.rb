# coding: utf-8
# 목록 11-7: Integer#times의 Rubinius 구현, kernel/common/integer.rb로부터 발췌함.

def times
  return to_enum(:times) unless block_given?

  i = 0
  while i < self
    yield i
    i += 1
  end
  self
end
