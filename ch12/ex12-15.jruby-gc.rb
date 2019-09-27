# coding: utf-8
# 목록 12-15: 천만 개의 루비 객체를 배열에 저장하기

arr = []
10000000.times do
  arr << Object.new
end
