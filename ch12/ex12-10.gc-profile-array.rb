# coding: utf-8
# 목록 12-10: 천만 개의 루비 객체를 배열로 저장하기 (gc-profile-array.rb)

GC::Profiler.enable

arr = []
10000000.times do
  arr << Object.new
end

GC.start

GC::Profiler.report
