module SUBPROGRAMGROUPACCESS-SYNTAX

syntax SubPgmAccessSpec ::= Id Mcolon Mprovides Msubprogram Maccess UniCmpClassifierRef 
			| Id Mcolon Mrequires Msubprogram Maccess UniCmpClassifierRef 
			| Id Mcolon Mprovides Msubprogram Maccess 
			| Id Mcolon Mrequires Msubprogram Maccess 
syntax SubPgmAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Msubprogram Maccess UniCmpClassifierRef 
			| Id Mcolon Mrefined Mto Mrequires Msubprogram Maccess UniCmpClassifierRef 
syntax SubPgmGroupAccessSpec ::= Id Mcolon Mprovides Msubprogram Mgroup Maccess UniCmpClassifierRef 
			| Id Mcolon Mrequires Msubprogram Mgroup Maccess UniCmpClassifierRef 
syntax SubPgmGroupAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Msubprogram Mgroup Maccess UniCmpClassifierRef 
			| Id Mcolon Mrefined Mto Mrequires Msubprogram Mgroup Maccess UniCmpClassifierRef 
syntax SubPgmUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule
