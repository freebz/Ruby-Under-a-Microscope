# coding: utf-8
# 목록 3-9: 두 개의 다른 스코프에서 $&를 참조하기

str = "The quick brown fox jumped over the lazy dog.\n"
/fox/.match(str)

def search(str)
  /dog/.match(str)
  puts "Value of $& inside method: #{$&}"
end
search(str)

puts "Value of $& in the top level scope: #{$&}"
