module PROPERTYCONSTANT-SYNTAX
// 11.1.3 check
  syntax PropertyConstant ::= SigleValuedPropertyConstant | MultiValuedPropertyConstant 
    syntax SigleValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " PropertyTypeDesignator "=>" ConstantPropertyExpression ";"
      syntax PropertyConstantIdentifier ::= Id
      syntax ConstantPropertyExpression ::= PropertyExpression // need rules
    syntax MultiValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " ListOf  PropertyTypeDesignator "=>" ConstantPropertyListValue ";"
      syntax ConstantPropertyListValue ::= PropertyListValue // need rules
    syntax UniquePropertyConstantIdentifier ::= PropertyConstantIdentifier | PropertySetIdentifier "::" PropertyConstantIdentifier
endmodule

module PROPERTYCONSTANT

  imports  PROPERTYCONSTANT-SYNTAX
endmodule