module ENDTOENDFLOW-SYNTAX

syntax EndToEndFlowSpec ::= Id Mcolon Mend Mto Mend Mflow StartSubCmpFlowOrEtefId ConnectionIdFlowPathList EndToEndFlowSpecAssocDefault MSemicolon 
			| Id Mcolon Mend Mto Mend Mflow StartSubCmpFlowOrEtefId ConnectionIdFlowPathList MSemicolon 
syntax StartSubCmpFlowOrEtefId ::= SubCmpFlowOrEtefId 
syntax ConnectionIdFlowPathList ::= MArrows SubCmpFlowId MArrows SubCmpFlowId 
			| MArrows SubCmpFlowId MArrows SubCmpFlowId ConnectionIdFlowPathList 
syntax EndToEndFlowSpecAssocDefault ::= MBraceLeft PpeAssocList MBraceRight InModesAndTransitions 
			| MBraceLeft PpeAssocList MBraceRight 
			| InModesAndTransitions 
syntax EndToEndSpecRefinement ::= Id Mcolon Mrefined Mto Mend Mto Mend Mflow EndToEndSpecRefinementDefault MSemicolon 
syntax EndToEndSpecRefinementDefault ::= MBraceLeft PpeAssocList MBraceRight InModesAndTransitions 
			| MBraceLeft PpeAssocList MBraceRight 
			| InModesAndTransitions 
syntax SubCmpFlowOrEtefId ::= SubCmpFlowId 

endmodule
