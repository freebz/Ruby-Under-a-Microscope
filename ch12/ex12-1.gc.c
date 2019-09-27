// 목록 12-1: gc.c 발췌한 RVALUE 정의 일부

typedef struct RVALUE {
  union {
    struct {
      VALUE flags;       /* obj가 메모리로부터 해제된 경우 항상 0 값을 가짐. */
      struct RVALUE *next;
    } free;
    struct RBasic  basic;
    struct RObject object;
    struct RClass  klass;
    struct RFloat  flonum;
    struct RString string;
    struct RArray  array;
    struct RRegexp regexp;

--snip--

    } as;
#ifdef GC_DEBUG
    const char *file;
    int line;
#endif
} RVALUE;
