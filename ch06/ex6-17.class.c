// 목록 6-17: class.c로부터 발췌한 rb_include_class_new C 함수의 일부

VALUE
rb_include_class_new(VALUE module, VALUE super)
{
    VALUE klass = class_alloc(T_ICLASS, rb_cClass);
    --snip--
    RCLASS_IV_TBL(klass) = RCLASS_IV_TBL(module);
    RCLASS_CONST_TBL(klass) = RCLASS_CONST_TBL(module);
    RCLASS_M_TBL(klass) = RCLASS_M_TBL(RCLASS_ORIGIN(module));
    RCLASS_SUPER(klass) = super;
    --snip--
    return (VALUE)klass;
}
