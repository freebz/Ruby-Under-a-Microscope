# coding: utf-8
# 목록 10-11: copy-on-write 시 발생하는 자체시간 측정하기

require 'benchmark'

ITERATIONS = 1000000

Benchmark.bm do |bench|
  bench.report("test") do
    ITERATIONS.times do
      str = "This string is not shared" + " and so can be modified faster."
      str2 = "But this string is shared" + " so Ruby will read to copy it
              before writing to it."
      str3 = str2.dup
      str3[3] = 'x'
    end
  end
end
