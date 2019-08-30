# coding: utf-8
# 목록 5-9: 각 테스트 객체에 인스턴스 변수 추가하기

Benchmark.bm do |bench|
  20.times do |count|
    bench.report("adding instance variable number #{count+1}") do
      ITERATIONS.times do |n|
        obj[n].instance_variable_set("@var#{count}", "value")
      end
    end
  end
end
