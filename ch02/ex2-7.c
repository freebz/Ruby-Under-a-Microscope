// 목록 2-7: 이 C 코드는 인수를 컴파일해서 모든 루비 메서드 호출 시 넘겨준다.

/* 인수 */
if (nd_type(node) != NODE_VCALL) {
    argc = setup_args(iseq, args, node->nd_args, &flag);
}
else {
    argc = INT2FIX(0);
}
