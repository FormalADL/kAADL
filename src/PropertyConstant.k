module PROPERTYCONSTANT-SYNTAX

  syntax PpeConstant ::= SigleValuedPpeConstant | MultiValuedPpeConstant 
  syntax SigleValuedPpeConstant ::= PpeConstantIdentifier ":" "constant " PpeTypeDesignator "=>" ConstantPpeExpression ";"
  syntax PpeConstantIdentifier ::= Id
  syntax ConstantPpeExpression ::= PpeExpression // need rules
  syntax MultiValuedPpeConstant ::= PpeConstantIdentifier ":" "constant " ListOf  PpeTypeDesignator "=>" ConstantPpeListValue ";"
  syntax ConstantPpeListValue ::= PpeListValue // need rules
  syntax UniquePpeConstantIdentifier ::= PpeConstantIdentifier | PpeSetIdentifier "::" PpeConstantIdentifier
endmodule

module PROPERTYCONSTANT

//  imports  PROPERTYCONSTANT-SYNTAX
endmodule