# coding: utf-8
# 목록 12-8: GC::Profiler를 이용하여 GC 사용 프로파일을 나타내기 (gc-profile.rb)

GC::Profiler.enable

10000000.times do
  obj = Object.new
end

GC::Profiler.report
