module ABSTRACTFEATURE-SYNTAX

syntax AbstractFetSpec ::= Id Mcolon Min Mfeature Id 
			| Id Mcolon Min Mfeature 
			| Id Mcolon Mout Mfeature Id 
			| Id Mcolon Mout Mfeature 
syntax AbstractFetRefinement ::= Id Mcolon Mrefined Mto Min Mfeature Id 
			| Id Mcolon Mrefined Mto Min Mfeature 
			| Id Mcolon Mrefined Mto Mout Mfeature Id 
			| Id Mcolon Mrefined Mto Mout Mfeature 
			| PortRefinement 
			| FetGroupRefinement 
			| SubCmpAccessRefinement 
			| ParameterRefinement 
endmodule
