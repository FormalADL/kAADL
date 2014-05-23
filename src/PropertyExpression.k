module PROPERTYEXPRESSION-SYNTAX
// 11.4 check
  syntax PpeExpression ::= BooleanTerm 
           |  RealTerm
           |  IntegerTerm
           |  StringTerm
           |  EnumerationTerm
           |  UnitTerm
           |  RealRangeTerm
           |  IntegerRangeTerm
           |  PpeTerm
           |  CmpClassifierTerm 
           |  ReferenceTerm
           |  RecordTerm
           |  ComputedTerm
    syntax BooleanTerm ::= BooleanValue
            |  BooleanPpeConstantTerm
            |  "not "BooleanTerm
            |  BooleanTerm "and"BooleanTerm
            |  BooleanTerm "or"BooleanTerm
      syntax BooleanValue ::= "true" | "false"
      syntax BooleanPpeConstantTerm ::= PpeConstantTerm // need rules
    syntax RealTerm::= SignedAadlrealOrConstant
    syntax IntegerTerm ::= SignedAadlintegerOrConstant
    syntax StringTerm ::= StringLiteral | StringPpeConstantTerm
      syntax StringLiteral ::= NODEF
      syntax StringPpeConstantTerm ::=  PpeConstantTerm // need rules
    syntax EnumerationTerm ::= EnumerationIdentifier | EnumerationPpeConstantTerm
      syntax EnumerationIdentifier ::= NODEF
      syntax EnumerationPpeConstantTerm ::= PpeConstantTerm // need rules
    syntax UnitTerm ::= UnitIdentifier | UnitPpeConstantTerm
      syntax UnitPpeConstantTerm ::= PpeConstantTerm // need rules
    syntax IntegerRangeTerm ::= IntegerTerm ".." IntegerTerm 
              |  IntegerTerm ".." IntegerTerm "delta" IntegerTerm
              |  IntegerRangePpeConstantTerm
      syntax IntegerRangePpeConstantTerm ::= PpeConstantTerm // need rules
    syntax RealRangeTerm ::= RealTerm ".." RealTerm
           |  RealTerm ".." RealTerm "delta" RealTerm
           |  RealRangePpeConstantTerm
      syntax RealRangePpeConstantTerm ::= PpeConstantTerm // need rules
    syntax PpeTerm ::= PpeNameIdentifier
              | PpeSetIdentifier "::" PpeNameIdentifier
    syntax CmpClassifierTerm ::= "classifier" "(" UniqueCmpTypeReference ")"
            |  "classifier" "(" UniqueCmpImplReference ")"
    syntax ReferenceTerm ::= "reference" "(" ContainedModelElementPath ")"
    syntax RecordTerm ::= "(" RecordFieldIdentifierIdentifierList ")"
      syntax RecordFieldIdentifierIdentifierList ::= RecordFieldIdentifierIdentifier "=>" PpeValue ";"
                    |  RecordFieldIdentifierIdentifier "=>" PpeValue ";" RecordFieldIdentifierIdentifierList 
        syntax RecordFieldIdentifierIdentifier ::= Id | Id "." Id | Id "_" Id
    syntax ComputedTerm ::= "compute" "(" FunctionIdentifier ")"
      syntax FunctionIdentifier ::= Id
  syntax PpeConstantTerm ::= PpeConstantIdentifier 
             |  PpeSetIdentifier "::" PpeConstantIdentifier
         

endmodule

module PROPERTYEXPRESSION

//  imports PROPERTYEXPRESSION-SYNTAX
endmodule