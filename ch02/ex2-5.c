// 목록 2-5: switch문의 이 case는 루비코드상의 메서드 호출을 컴파일한다.

case NODE_CALL:
case NODE_FCALL:
case NODE_VCALL:		/* VCALL: 변수 호출 */
  /*
    call:  obj.method(...)
    fcall: func(...)
    vcall: func
  */
