// 목록 1-17: 루비는 opt_paren_args 문법규칙이 일치할 때 이와 같은 C 코드를 호출한다.

$$ = NEW_CALL($1, $3, $5);
  nd_set_line($$, $<num>4);
