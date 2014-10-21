module  BUSCOMPONENTACCESS-SYNTAX

syntax BusAccessSpec ::= Id Mcolon Mprovides Mbus Maccess Id 
			| Id Mcolon Mrequires Mbus Maccess Id 
syntax BusAccessSpec ::= Id Mcolon Mprovides Mdata Maccess Id 
			| Id Mcolon Mrequires Mdata Maccess Id 
syntax BusAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Mdata Maccess Id 
			| Id Mcolon Mrefined Mto Mrequires Mdata Maccess Id 
syntax BusUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule
