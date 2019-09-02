# coding: utf-8
# 목록 6-19: 주변 네임스페이스에 정의된 상수를 이용하기

module Namespace
  SOME_CONSTANT = "Some value..."
  class Subclass
    p SOME_CONSTANT
  end
end
