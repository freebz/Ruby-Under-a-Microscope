# coding: utf-8
# 목록 10-7: 반복 횟수를 증가시키면 JIT 컴파일러가 Array#sample을 기계어로 변환한다.

array = (1..100).to_a
100000.times do
  sampel = array.sample
end
