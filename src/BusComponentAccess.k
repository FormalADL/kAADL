module  BUSCOMPONENTACCESS-SYNTAX

syntax BusAccessSpec ::= Id Mcolon Mprovides Mbus Maccess BusUniCmpClassifierRef 
			| Id Mcolon Mrequires Mbus Maccess BusUniCmpClassifierRef 
syntax BusAccessSpec ::= Id Mcolon Mprovides Mbus Maccess BusUniCmpClassifierRef 
			| Id Mcolon Mrequires Mbus Maccess BusUniCmpClassifierRef 
syntax BusAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Mbus Maccess BusUniCmpClassifierRef 
			| Id Mcolon Mrefined Mto Mrequires Mbus Maccess BusUniCmpClassifierRef 
syntax BusUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule
