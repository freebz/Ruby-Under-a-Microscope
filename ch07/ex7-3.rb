# coding: utf-8
# 목록 7-3: 여러 크기의 해시들에 하나 이상의 요소를 추가하기

require 'benchmark'

100.times do |size|

  hashes = []
  10000.times do
    hash = {}
    (1..size).each do
      hash[rand] = rand
    end
    hashes << hash
  end

  GC.disable

  Benchmark.bm do |bench|
    bench.report("adding element number #{size+1}") do
      10000.times do |n|
        hashes[n][size] = rand
      end
    end
  end

  GC.enable
end
