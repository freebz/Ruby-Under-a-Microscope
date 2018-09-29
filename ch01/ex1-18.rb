# coding: utf-8
# 목록 1-18: Ripper.sexp를 호출하는 방법의 예

require 'ripper'
require 'pp'
code = <<STR
10.times do |n|
  puts n
end
STR
puts code
pp Ripper.sexp(code)
