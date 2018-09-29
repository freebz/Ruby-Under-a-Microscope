// 목록 1-13: 이 문법규칙에서는 문구 1과 문구 2가 모두 일치한다.

SpanishPhrase: VerbAndObject el ruby {
  printf("%s Ruby\n", $1);
};
VerbAndObject: SheLikes | ILike {
  $$ = $1;
};
SheLikes: le gusta {
  $$ = "She likes";
}
ILike: me gusta {
  $$ = "I like";
}
