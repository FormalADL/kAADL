module PARAMETERCONNECTION-SYNTAX

syntax ParameterConnection ::= Mparameter SourceParameterRef DirectionalConnectionSymbol DestinationParameterRef 
syntax SourceParameterRef ::= ParameterRef 
syntax DirectionalConnectionSymbol ::= MArrows 
syntax DestinationParameterRef ::= ParameterRef 
syntax ParameterConnectionRefinement ::= Mparamenter 
syntax ParameterRef ::= Id 
			| Id MPoint Id 
endmodule
