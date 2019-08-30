# coding: utf-8
# 목록 3-10: 블록 내부에서 $& 값 표시하기

str = "The quick brown fox jumped over the lazy dog.\n"
/fox/.match(str)

2.times do
  /dog/.match(str)
  puts "Value of $& inside block: #{$&}"
end

puts "Value of $& in the top-level scope: #{$&}"
