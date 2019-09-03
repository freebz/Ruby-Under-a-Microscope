# coding: utf-8
# 목록 8-2: 블록 내의 코드는 주변 코드상의 변수 str에 접근할 수 있다.

str = "The quick brown fox"
10.times do
  str2 = "jumps over the lazy dog."
  puts "#{str} #{str2}"
end
