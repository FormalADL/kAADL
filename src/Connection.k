module CONNECTION-SYNTAX

syntax Connection ::= Id Mcolon SomeConnections MSemicolon 
syntax SomeConnections ::= FetConnection PpeInMode 
			| PortConnection PpeInMode 
			| ParameterConnection PpeInMode 
			| AccessConnection PpeInMode 
			| FetGroupConnection PpeInMode 
			| FetConnection 
			| PortConnection 
			| ParameterConnection 
			| AccessConnection 
			| FetGroupConnection 
syntax PpeInMode ::= MBraceLeft PpeAssocList MBraceRight InModesAndTransitions 
			| MBraceLeft PpeAssocList MBraceRight 
			| InModesAndTransitions 
syntax PpeAssocList ::= PpeAssoc 
			| PpeAssoc PpeAssocList 
syntax ConnectionRefinement ::= Id Mcolon Mrefined Mto SomeRefinements MSemicolon 
syntax ConnectionRefinement ::= Id Mcolon Mrefined Mto SomeRefinements PpeInMode MSemicolon 
syntax SomeRefinements ::= FetConnectionRefinement 
			| PortConnectionRefinement 
			| ParameterConnectionRefinement 
			| AccessConnectionRefinement 
			| FetGroupConnectionRefinement 
endmodule
