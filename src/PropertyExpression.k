module PROPERTYEXPRESSION-SYNTAX
// 11.4 check
  syntax PropertyExpression ::= BooleanTerm 
           |  RealTerm
           |  IntegerTerm
           |  StringTerm
           |  EnumerationTerm
           |  UnitTerm
           |  RealRangeTerm
           |  IntegerRangeTerm
           |  PropertyTerm
           |  ComponentClassifierTerm 
           |  ReferenceTerm
           |  RecordTerm
           |  ComputedTerm
    syntax BooleanTerm ::= BooleanValue
            |  BooleanPropertyConstantTerm
            |  "not "BooleanTerm
            |  BooleanTerm "and"BooleanTerm
            |  BooleanTerm "or"BooleanTerm
      syntax BooleanValue ::= "true" | "false"
      syntax BooleanPropertyConstantTerm ::= PropertyConstantTerm // need rules
    syntax RealTerm::= SignedAadlrealOrConstant
    syntax IntegerTerm ::= SignedAadlintegerOrConstant
    syntax StringTerm ::= StringLiteral | StringPropertyConstantTerm
      syntax StringLiteral ::= NODEF
      syntax StringPropertyConstantTerm ::=  PropertyConstantTerm // need rules
    syntax EnumerationTerm ::= EnumerationIdentifier | EnumerationPropertyConstantTerm
      syntax EnumerationIdentifier ::= NODEF
      syntax EnumerationPropertyConstantTerm ::= PropertyConstantTerm // need rules
    syntax UnitTerm ::= UnitIdentifier | UnitPropertyConstantTerm
      syntax UnitPropertyConstantTerm ::= PropertyConstantTerm // need rules
    syntax IntegerRangeTerm ::= IntegerTerm ".." IntegerTerm 
              |  IntegerTerm ".." IntegerTerm "delta" IntegerTerm
              |  IntegerRangePropertyConstantTerm
      syntax IntegerRangePropertyConstantTerm ::= PropertyConstantTerm // need rules
    syntax RealRangeTerm ::= RealTerm ".." RealTerm
           |  RealTerm ".." RealTerm "delta" RealTerm
           |  RealRangePropertyConstantTerm
      syntax RealRangePropertyConstantTerm ::= PropertyConstantTerm // need rules
    syntax PropertyTerm ::= PropertyNameIdentifier
              | PropertySetIdentifier "::" PropertyNameIdentifier
    syntax ComponentClassifierTerm ::= "classifier" "(" UniqueComponentTypeReference ")"
            |  "classifier" "(" UniqueComponentImplementationReference ")"
    syntax ReferenceTerm ::= "reference" "(" ContainedModelElementPath ")"
    syntax RecordTerm ::= "(" RecordFieldIdentifierIdentifierList ")"
      syntax RecordFieldIdentifierIdentifierList ::= RecordFieldIdentifierIdentifier "=>" PropertyValue ";"
                    |  RecordFieldIdentifierIdentifier "=>" PropertyValue ";" RecordFieldIdentifierIdentifierList 
        syntax RecordFieldIdentifierIdentifier ::= Id | Id "." Id | Id "_" Id
    syntax ComputedTerm ::= "compute" "(" FunctionIdentifier ")"
      syntax FunctionIdentifier ::= Id
  syntax PropertyConstantTerm ::= PropertyConstantIdentifier 
             |  PropertySetIdentifier "::" PropertyConstantIdentifier
         

endmodule

module PROPERTYEXPRESSION

//  imports PROPERTYEXPRESSION-SYNTAX
endmodule