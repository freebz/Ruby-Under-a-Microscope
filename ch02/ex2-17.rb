# coding: utf-8
# 목록 2-17: 이 메서드는 스플랏 연산자와 함께 이름 없는 인수를 사용한다.

code = <<END
def complex_formula(a, b, *args, c)
  a + b + args.size + c
end
END

puts RubyVM::InstructionSequence.compile(code).disasm
