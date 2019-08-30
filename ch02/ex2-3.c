// 목록 2-3: 이 C 함수는 AST상의 각 노드를 컴파일한다.

/**
   각 노드에 대한 컴파일 작업
   self:  InstructionSequence
   node:  Ruby compiled node
   poped: This node will be poped
  */
static int
iseq_compile_each(rb_iseq_t *iseq, LINK_ANCHOR *ret, NODE *node, int poped)
{
