# coding: utf-8
# 목록 5-8: Class.new를 이용해서 테스트 객체를 생성하기

ITERATIONS = 100000
GC.disable
obj = ITERATIONS.times.map { Class.new.new }
