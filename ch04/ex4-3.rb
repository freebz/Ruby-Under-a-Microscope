# coding: utf-8
# 목록 4-3: 이 코드는 루비가 for 루프를 컴파일하는 방법을 나타낼 것이다.

code = <<END
for i in 0..5
  puts i
end
END
puts RubyVM::InstructionSequence.compile(code).disasm
