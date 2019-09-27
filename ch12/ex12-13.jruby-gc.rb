# coding: utf-8
# 목록 12-13: Object.new를 이용하여 천만 개의 루비 객체를 생성하기 (jruby-gc.rb)

10000000.times do
  obj = Object.new
end
