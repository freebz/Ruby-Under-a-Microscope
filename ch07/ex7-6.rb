# coding: utf-8
# 목록 7-6: 다양한 크기의 해시로부터 특정 요소를 불러오는 데 걸리는 시간을 측정한다. 이것은 목록 7-1과 같지만 KeyObject 클래스의 인스턴스를 키로 사용할 것이다.

require 'benchmark'

class KeyObject
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
