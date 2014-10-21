module PROPERTYCONSTANT-SYNTAX

syntax PpeConstant ::= SigleValuedPpeConstant 
			| MultiValuedPpeConstant 
syntax SigleValuedPpeConstant ::= Id Mcolon Mconstant PpeTypeDesignator MRoughArrow ConstantPpeExpression MSemicolon 
syntax ConstantPpeExpression ::= PpeExpression 
syntax MultiValuedPpeConstant ::= Id Mcolon Mconstant ListOf PpeTypeDesignator MRoughArrow ConstantPpeListValue MSemicolon 
syntax ConstantPpeListValue ::= PpeListValue 
syntax UniPpeConstantId ::= Id 
			| Id MDoubleColon Id 
endmodule
