# coding: utf-8
# 목록 1-10: 이 코드는 문법 오류를 포함한다.

require 'ripper'
require 'pp'
code = <<STR
10.times do |n
  puts n
end
STR
puts code
pp Ripper.lex(code)
