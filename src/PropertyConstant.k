module PROPERTYCONSTANT-SYNTAX
  syntax PpeSetId ::= Id  //should defined in propertyset.k
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