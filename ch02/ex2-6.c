// 목록 2-6: 이 C 코드는 메서드 호출 위해서 사용하는 리시버 값을 컴파일한다.

/* 리시버 */
if (type == NODE_CALL) {
    COMPILE(recv, "recv", node->nd_recv);
}
else if (type == NODE_FCALL || type == NODE_VCALL) {
    ADD_CALL_RECEIVER(recv, nd_line(node));
}
