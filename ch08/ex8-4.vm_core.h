// 목록 8-4: vm_core.h 파일의 rb_control_frame_t 정의

typedef struct rb_control_frame_struct {
    VALUE *pc;			/* cfp[0] */
    VALUE *sp;			/* cfp[1] */
    rb_iseq_t *iseq;		/* cfp[2] */
    VALUE flag;			/* cfp[3] */
    VALUE self;			/* cfp[4] / block[0] */
    VALUE klass;		/* cfp[5] / block[1] */
    VALUE *ep;			/* cfp[6] / block[2] */
    rb_iseq_t *block_iseq;	/* cfp[7] / block[3] */
    VALUE proc;			/* cfp[8] / block[4] */
    const rb_method_entry_t *me;/* cfp[9] */

#if VM_DEBUG_BP_CHECK
    VALUE *bp_check;		/* cfp[10] */
#endif
} rb_control_frame_t;
