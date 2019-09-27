// 목록 11-18: RArray 정의 (include/ruby/ruby.h에서 발췌함)

#define RARRAY_EMBED_LEN_MAX 3
struct RArray {
  struct RBasic basic;
  union {
    struct {
      long len;
      union {
	long capa;
	VALUE shared;
      } aux;
      VALUE *ptr;
    } heap;
    VALUE ary[RARRAY_EMBED_LEN_MAX];
  } as;
};
