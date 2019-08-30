// 목록 3-12: 이 case문들은 루비의 정규표현식과 관련된 special 변수들에 해당한다.

case '&':		  /* $&: 최종 매치된 것 */
case '`':		  /* $`: 최종 매치 이전의 문자열 */
case '\'':		  /* $': 최종 매치 이후의 문자열 */
case '+':		  /* $+: 최종 매치 그룹 문자열 */
  if (last_state == EXPR_FNAME) {
    tokadd('$');
    tokadd(c);
    goto gvar;
  }
  set_yylval_node(NEW_BACK_REF(c));
  return tBACK_REF;
