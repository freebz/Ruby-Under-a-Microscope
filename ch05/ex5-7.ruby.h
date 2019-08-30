// 목록 5-7: RBasic과 RObject C 구조체의 정의

struct RBasic {
  VALUE flags;
  VALUE klass;
};

#define ROBJECT_EMBED_LEN_MAX 3
struct RObject {
  struct RBasic basic;
  union {
    struct {
      long numiv;
      VALUE *ivptr;
      struct st_table *iv_index_tbl;
    } heap;
    VALUE ary[ROBJECT_EMBED_LEN_MAX];
  } as;
};
