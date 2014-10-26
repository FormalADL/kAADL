module SUBPROGRAMPARAMETER-SYNTAX

syntax ParameterSpec ::= Id Mcolon Min Mparameter DataUniCmpClassifierRef 
			| Id Mcolon Mout Mparameter DataUniCmpClassifierRef 
			| Id Mcolon Min Mout Mparameter DataUniCmpClassifierRef 
		//	| Id Mcolon Min Mparameter Id 
		//	| Id Mcolon Mout Mparameter Id 
		//	| Id Mcolon Min Mout Mparameter Id 
syntax ParameterRefinement ::= Id Mcolon Mrefined Mto Min Mparameter DataUniCmpClassifierRef 
			| Id Mcolon Mrefined Mto Mout Mparameter DataUniCmpClassifierRef 
			| Id Mcolon Mrefined Mto Min Mout Mparameter DataUniCmpClassifierRef 
		//	| Id Mcolon Mrefined Mto Min Mparameter Id 
		//	| Id Mcolon Mrefined Mto Mout Mparameter Id 
		//	| Id Mcolon Mrefined Mto Min Mout Mparameter Id 
endmodule
