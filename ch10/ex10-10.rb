# coding: utf-8
# 목록 10-10: 리터럴 문자열 상수를 사용할 때, MRI 루비는 내부적으로 dup YARV 명령을 사용할 것이다.

code = <<END
str = "Geometry is knowledge of the eternally existent."
END

puts RubyVM::InstructionSequence.compile(code).disasm
# == disasm: <RubyVM::InstructionSequence:<compiled>@<compiled>>===========
# local table (size: 2, argc: 0 [opts: 0, rest: -1, post: 0, block: -1] s1)
# [ 2] str
# 0000 trace            1                                               (   1)
# 0002 putstring        "Geometry is knowledge of the eternally existent."
# 0004 dup
# 0005 setlocal_OP__WC__0 2
# 0007 leave
