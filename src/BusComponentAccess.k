module  BUSCOMPONENTACCESS-SYNTAX

syntax BusAccessSpec ::= Id Mcolon Mprovides Mbus Maccess BusUniCmpClassifierRef 
			| Id Mcolon Mrequires Mbus Maccess BusUniCmpClassifierRef 
syntax BusAccessSpec ::= Id Mcolon Mprovides Mdata Maccess BusUniCmpClassifierRef 
			| Id Mcolon Mrequires Mdata Maccess BusUniCmpClassifierRef 
syntax BusAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Mdata Maccess BusUniCmpClassifierRef 
			| Id Mcolon Mrefined Mto Mrequires Mdata Maccess BusUniCmpClassifierRef 
syntax BusUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule
