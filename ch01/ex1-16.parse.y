// 목록 1-16: parse.y 파일 내의 실제 method_call 문법규칙

method_call        :
--snip--
      primary_value '.' operation2
        {
        /*%%%*/
	    $<num>$ = ruby_sourceline;
        /*% %*/
	}
      opt_paren_args
        {
	/*%%%*/
	    $$ = NEW_CALL($1, $3, $5);
	    nd_set_line($$, $<num>4);
	/*%
	    $$ = dispatch3(call, $1, ripper_id2sym('.'), $3);
	    $$ = method_optarg($$, $5);
	 %*/
	}
