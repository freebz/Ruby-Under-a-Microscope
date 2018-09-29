# coding: utf-8
# 목록 1-23: 2 + 2 * 3에 대한 AST를 나타내는 코드

require 'ripper'
require 'pp'
code = <<STR
2 + 2 * 3
STR
puts code
pp Ripper.sexp(code)
