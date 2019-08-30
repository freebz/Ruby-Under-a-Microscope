# coding: utf-8
# 목록 2-8: puts 2+2에 대한 YARV 명령을 보는 방법

code = <<END
puts 2+2
END
puts RubyVM::InstructionSequence.compile(code).disasm
