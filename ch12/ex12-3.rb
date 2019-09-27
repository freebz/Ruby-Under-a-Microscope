# coding: utf-8
# 목록 12-3: MRI의 힙 정보를 보여주기 위해서 ObjectSpace#count_objects 메서드를 사용하기

def display_count
  data = ObjectSpace.count_objects
  puts "Total: #{data[:TOTAL]} Free: #{data[:FREE]} Object: #{data[:T_OBJECT]}"
end

10.times do
  obj = Object.new
  display_count
end
