// 목록 3-4: putself의 정의는 루비 빌드 과정에서 이와 같은 C 코드로 변환된다.

INSN_ENTRY(putself) {
{
  VALUE val;
  DEBUG_ENTER_INSN("putself");
  ADD_PC(1+0);
  PREFETCH(GET_PC());
  #define CURRENT_INSN_putself 1
  #define INSN_IS_SC()     0
  #define INSN_LABEL(lab)  LABEL_putself_##lab
  #define LABEL_IS_SC(lab) LABEL_##lab##_##t
  COLLECT_USAGE_INSN(BIN(putself));
{
#line 282 "insns.def"
  val = GET_SELF();
#line 408 "vm.inc"
  CHECK_VM_STACK_OVERFLOW(REG_CFP, 1);
  PUSH(val);
#undef CURRENT_INSN_putself
#undef INSN_IS_SC
#undef INSN_LABEL
#undef LABEL_IS_SC
  END_INSN(putself);}}}
