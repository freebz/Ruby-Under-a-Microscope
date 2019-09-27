# coding: utf-8
# 목록 12-6: 완전 가비지 컬렉션 시작하기

def display_count
  data = ObjectSpace.count_objects
  puts "Total: #{data[:TOTAL]} Free: #{data[:FREE]} Object: #{data[:T_OBJECT]}"
end

30.times do
  obj = Object.new
  display_count
end

GC.start
display_count
