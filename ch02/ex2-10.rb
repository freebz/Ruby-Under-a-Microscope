# coding: utf-8
# 목록 2-10: 블록 호출에 대한 YARV 명령 나타내기

code = <<END
10.times do |n|
  puts n
end
END
puts RubyVM::InstructionSequence.compile(code).disasm
