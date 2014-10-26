module DATACOMPONENTACCESS-SYNTAX

syntax DataAccessSpec ::= Id Mcolon Mprovides Mdata Maccess DataUniCmpClassifierRef 
			| Id Mcolon Mrequires Mdata Maccess DataUniCmpClassifierRef 
		//	| Id Mcolon Mprovides Mdata Maccess Id 
		//	| Id Mcolon Mrequires Mdata Maccess Id 
syntax DataAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Mdata Maccess DataUniCmpClassifierRef 
			| Id Mcolon Mrefined Mto Mrequires Mdata Maccess DataUniCmpClassifierRef 
		//	| Id Mcolon Mrefined Mto Mprovides Mdata Maccess Id 
		//	| Id Mcolon Mrefined Mto Mrequires Mdata Maccess Id 
endmodule
