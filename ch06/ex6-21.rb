# coding: utf-8
# 목록 6-21: 부모 렉시컬 스코프에서 상수 찾기(목록 6-19의 코드를 반복함)

module Namespace
  SOME_CONSTANT = "Some value..."
  class Subclass
    p SOME_CONSTANT
  end
end
