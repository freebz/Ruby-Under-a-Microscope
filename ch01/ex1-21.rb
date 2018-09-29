# coding: utf-8
# 목록 1-21: 이 코드는 2 + 2에 대한 AST를 나타낸다.

require 'ripper'
require 'pp'
code = <<STR
2 + 2
STR
puts code
pp Ripper.sexp(code)
