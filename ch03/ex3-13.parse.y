// 목록 3-13: 이 C 코드는 루비의 n번째 역참조 special 변수($1, $2 등)를 토큰화한다.

case '1': case '2': case '3':
case '4': case '5': case '6':
case '7': case '8': case '9':
  tokadd('$');
  do {
    tokadd(c);
    c = nextc();
  } while (c != -1 && ISDIGIT(c));
  pushback(c);
  if (last_state == EXPR_FNAME) goto gvar;
  tokfix();
  set_yylval_node(NEW_NTH_REF(atoi(tok()+1)));
  return tNTH_REF;
