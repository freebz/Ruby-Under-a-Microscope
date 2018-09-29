// 목록 1-5: 이 C 코드는 코드 내의 화이트스페이스 문자들을 점검해서 무시한다.

  /* white spaces */
case ' ': case '\t': case '\f': case '\r':
case '\13': /* '\v' */
  space_seen = 1;
  --snip--
  goto retry;
