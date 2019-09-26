# coding: utf-8
# 목록 10-9: JIT 퍼포먼스를 벤치마킹하는 샘플 코드

require 'benchmark'

iterations = ARGV[0].to_i

Benchmark.bm do |bench|
  array = (1..100).to_a
  bench.report("#{iterations} iterations") do
    iterations.times do
      sample = array.sample
    end
  end
end
