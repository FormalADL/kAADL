module PROPERTYCONSTANT-SYNTAX

  syntax PpeConstant ::= SigleValuedPpeConstant 
                       | MultiValuedPpeConstant 
  syntax SigleValuedPpeConstant ::= PpeConstantId ":" "constant" PpeTypeDesignator "=>" ConstantPpeExpression ";"
  syntax PpeConstantId ::= Id
  syntax ConstantPpeExpression ::= PpeExpression // need rules
  syntax MultiValuedPpeConstant ::= PpeConstantId ":" "constant" ListOf  PpeTypeDesignator "=>" ConstantPpeListValue ";"
  syntax ConstantPpeListValue ::= PpeListValue // need rules
  syntax UniPpeConstantId ::= PpeConstantId | PpeSetId "::" PpeConstantId
endmodule

module PROPERTYCONSTANT

//  imports  PROPERTYCONSTANT-SYNTAX
endmodule