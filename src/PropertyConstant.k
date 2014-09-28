module PROPERTYCONSTANT-SYNTAX

  syntax PpeConstant ::= SigleValuedPpeConstant 
                       | MultiValuedPpeConstant 
  syntax SigleValuedPpeConstant ::= PpeConstantId  Mcolon   Mconstant  PpeTypeDesignator  MRoughArrow  ConstantPpeExpression  MSemicolon 
  syntax PpeConstantId ::= Id
  syntax ConstantPpeExpression ::= PpeExpression // need rules
  syntax MultiValuedPpeConstant ::= PpeConstantId  Mcolon   Mconstant  ListOf  PpeTypeDesignator  MRoughArrow  ConstantPpeListValue  MSemicolon 
  syntax ConstantPpeListValue ::= PpeListValue // need rules
  syntax UniPpeConstantId ::= PpeConstantId | PpeSetId  MDoubleColon  PpeConstantId
endmodule

module PROPERTYCONSTANT

//  imports  PROPERTYCONSTANT-SYNTAX
endmodule
