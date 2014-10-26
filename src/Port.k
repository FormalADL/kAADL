module PORT-SYNTAX

syntax PortSpec ::= Id Mcolon Min PortType 
			| Id Mcolon Mout PortType 
			| Id Mcolon Min Mout PortType 
syntax PortRefinement ::= Id Mcolon Mrefined Mto Min PortType 
			| Id Mcolon Mrefined Mto Mout PortType 
			| Id Mcolon Mrefined Mto Min Mout PortType 
syntax PortType ::=      Mdata Mport DataUniCmpClassifierRef 
		//	| Mdata Mport Id 
			| Mdata Mport 
			| Mevent Mdata Mport DataUniCmpClassifierRef 
		//	| Mevent Mdata Mport Id 
			| Mevent Mdata Mport 
			| Mevent Mport 
syntax DataUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule
