# coding: utf-8
# 목록 1-6: Ripper.lex 호출 방법에 대한 예제 코드 (lex1.rb)

require 'ripper'
require 'pp'
code = <<STR
10.times do |n|
  puts n
end
STR
puts code
pp Ripper.lex(code)
