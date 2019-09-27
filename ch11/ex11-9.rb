# coding: utf-8
# 목록 11-9: Array#shift는 배열로부터 첫 번째 배열요소를 제거하고 나머지 요소를 이동한다.

fibonacci_sequence = [1, 1, 2, 3, 5, 8]
p fibonacci_sequence.shift
# => 1
p fibonacci_sequence
# => [1, 2, 3, 5, 8]
