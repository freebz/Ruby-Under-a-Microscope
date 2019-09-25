# coding: utf-8
# 목록 9-15: binding을 이용해서 다른 환경의 변수를 접근하기

def get_binding
  a = 2
  b = 3
  binding
end
eval("puts a+b", get_binding)
