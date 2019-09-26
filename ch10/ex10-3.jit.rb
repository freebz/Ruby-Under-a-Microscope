# coding: utf-8
# 목록 10-3: JRuby의 JIT 동작을 테스트하기 위한 간단한 프로그램 (jit.rb)

array = (1..100).to_a
10.times do
  sample = array.sample
  puts sample
end
