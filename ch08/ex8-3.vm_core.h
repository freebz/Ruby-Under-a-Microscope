// 목록 8-3: vm_core.h 파일의 rb_block_t 정의

typedef struct rb_block_struct {
    VALUE self;
    VALUE klass;
    VALUE *ep;
    rb_iseq_t *iseq;
    VALUE proc;
} rb_block_t;
