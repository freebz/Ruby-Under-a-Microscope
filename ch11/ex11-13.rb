# coding: utf-8
# 목록 11-13: Array#shift의 수정 버전 이용하기

fibonacci_sequence = [1, 1, 2, 3, 5, 8]
p fibonacci_sequence.shift
# Start: 0 Total: 6 Tuple: #<Rubinius::Tuple: 1, 1, 2, 3, 5, 8>
# Start: 1 Total: 5 Tuple: #<Rubinius::Tuple: nil, 1, 2, 3, 5, 8>
# => 1
p fibonacci_sequence
# => [1, 2, 3, 5, 8]
