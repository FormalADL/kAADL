module ENDTOENDFLOW-SYNTAX

syntax EndToEndFlowSpec ::= Id Mcolon Mend Mto Mend Mflow StartSubCmpFlowOrEtefId ConnectionIdFlowPathList EndToEndFlowSpecAssocDefault MSemicolon 
			| Id Mcolon Mend Mto Mend Mflow StartSubCmpFlowOrEtefId ConnectionIdFlowPathList MSemicolon 
syntax StartSubCmpFlowOrEtefId ::= SubCmpFlowOrEtefId 

syntax ConnectionIdFlowPathList ::= AmbArrowsIdArrowsSubCmpFlowId  
			| MArrows SubCmpFlowId MArrows SubCmpFlowId ConnectionIdFlowPathList


syntax EndToEndFlowSpecAssocDefault ::= AmbEndToEndFlowSpecAssocDefaultPpeInMode 


syntax EndToEndSpecRefinement ::= Id Mcolon Mrefined Mto Mend Mto Mend Mflow EndToEndSpecRefinementDefault MSemicolon 

syntax EndToEndSpecRefinementDefault ::= AmbEndToEndFlowSpecAssocDefaultPpeInMode 

syntax SubCmpFlowOrEtefId ::= SubCmpFlowId 

endmodule
