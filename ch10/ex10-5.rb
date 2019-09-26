# coding: utf-8
# 목록 10-5: puts를 제거하고 반복 수를 1,000까지 증가시킨다.

array = (1..100).to_a
1000.times do
  sample = array.sample
end
