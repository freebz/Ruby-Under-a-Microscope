// 목록 3-11: parse.y 파일을 검색해보는 것은 루비의 많은 special 변수들에 대한 정확한 목록을 찾아볼 수 있는 좋은 방법이다.

case '$':
lex_state = EXPR_END;
newtok();
c = nextc();
switch (c) {
  case '_':	       /* $_: 최종 read line 문자열 */
    c = nextc();
    if (parser_is_identchar()) {
      tokadd('$');
      tokadd('_');
      break;
    }
    pushback(c);
    c = '_';
    /* 실패 시 */
  case '~':            /* $~: 매치 데이터 */
  case '*':	       /* $*: argv */
  case '$':	       /* $$: pid */
  case '?':	       /* $?: 최종 상태 */
  case '!':	       /* $!: 오류 문자열 */
  case '@':	       /* $@: 오류 위치 */
  case '/':	       /* $/: 입력 레코드 구분자 */
  case '\\':	       /* $\: 출력 레코드 구분자 */
  case ';':	       /* $;: 필드 구분자 */
  case ',':	       /* $,: 출력 필드 구분자 */
  case '.':	       /* $.: 최종 read line 수 */
  case '=':	       /* $=: 대소문자 구분하지 않음 */
  case ':':	       /* $:: 경로 로드하기 */
  case '<':	       /* $<: 파일명 읽기 */
  case '>':	       /* $>: 기본 출력 핸들 */
  case '\"':	       /* $": 이미 로드한 파일 */
    tokadd('$');
    tokadd(c);
    tokfix();
    set_yylval_name(rb_intern(tok()));
    return tGVAR;
