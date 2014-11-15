module PROPERTYCONSTANT-SYNTAX

syntax PpeConstant ::= SigleValuedPpeConstant 
			| MultiValuedPpeConstant 
syntax SigleValuedPpeConstant ::= Id Mcolon Mconstant PpeTypeDesignator MRoughArrow ConstantPpeExpression MSemicolon 
syntax ConstantPpeExpression ::= PpeExpression | AmbBracketLeftBooleanTermBracketRight 
syntax MultiValuedPpeConstant ::= Id Mcolon Mconstant ListOf PpeTypeDesignator MRoughArrow ConstantPpeListValue MSemicolon 
syntax ConstantPpeListValue ::= PpeListValue 
syntax UniPpeConstantId ::= AmbDoubleColonId
endmodule
