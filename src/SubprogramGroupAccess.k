module SUBPROGRAMGROUPACCESS-SYNTAX

syntax SubPgmAccessSpec ::= Id Mcolon Mprovides Msubprogram Maccess Id 
			| Id Mcolon Mrequires Msubprogram Maccess Id 
			| Id Mcolon Mprovides Msubprogram Maccess 
			| Id Mcolon Mrequires Msubprogram Maccess 
syntax SubPgmAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Msubprogram Maccess Id 
			| Id Mcolon Mrefined Mto Mrequires Msubprogram Maccess Id 
syntax SubPgmGroupAccessSpec ::= Id Mcolon Mprovides Msubprogram Mgroup Maccess Id 
			| Id Mcolon Mrequires Msubprogram Mgroup Maccess Id 
syntax SubPgmGroupAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Msubprogram Mgroup Maccess Id 
			| Id Mcolon Mrefined Mto Mrequires Msubprogram Mgroup Maccess Id 
syntax SubPgmUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule
