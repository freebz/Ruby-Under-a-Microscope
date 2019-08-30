// 목록 5-16: RClass C 구조체의 정의

typedef struct rb_classext_struct rb_classext_t;
struct RClass {
    struct RBasic basic;
    rb_classext_t *ptr;
    struct st_table *m_tbl;
    struct st_table *iv_index_tbl;
};
