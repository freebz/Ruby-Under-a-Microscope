# coding: utf-8
# 목록 4-10: 목록 4-9에 있는 코드에 대한 YARV 명령 보여주기

code = <<END
def add_two(a: 2, b: 3)
  a+b
end

puts add_two(a: 1, b: 1)
END

puts RubyVM::InstructionSequence.compile(code).disasm
