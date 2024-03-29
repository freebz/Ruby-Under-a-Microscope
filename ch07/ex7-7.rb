# coding: utf-8
# 목록 7-7: KeyObject는 이제 매우 기능이 떨어지는 해시 함수를 가진다.

require 'benchmark'

class KeyObject
  def hash
    4
  end
  def eql?(other)
    super
  end
end

21.times do |exponent|

  target_key = nil
  
  size = 2**exponent
  hash = {}
  (1..size).each do |n|
    index = KeyObject.new
    target_key = index if n > size/2 && target_key.nil?
    hash[index] = rand
  end

  GC.disable

  Benchmark.bm do |bench|
    bench.report("retrieving an element
                   from a hash with #{size} elements 10000 times") do
      10000.times do
        val = hash[target_key]
      end
    end
  end

  GC.enable

end
