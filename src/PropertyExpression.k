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
           |  RefTerm
           |  RecordTerm
           |  ComputedTerm
    syntax BooleanTerm ::= BooleanValue
            |  BooleanPpeConstantTerm
            |  "not" BooleanTerm
            |  BooleanTerm "and" BooleanTerm
            |  BooleanTerm "or"BooleanTerm
      syntax BooleanValue ::= "true" | "false"
      syntax BooleanPpeConstantTerm ::= PpeConstantTerm // need rules
    syntax RealTerm::= SignedAadlrealOrConstant
    syntax IntegerTerm ::= SignedAadlintegerOrConstant
    syntax StringTerm ::= StringLiteral | StringPpeConstantTerm
      syntax StringLiteral ::= NODEF
      syntax StringPpeConstantTerm ::=  PpeConstantTerm // need rules
    syntax EnumerationTerm ::= EnumerationId | EnumerationPpeConstantTerm
      syntax EnumerationId ::= NODEF
      syntax EnumerationPpeConstantTerm ::= PpeConstantTerm // need rules
    syntax UnitTerm ::= UnitId | UnitPpeConstantTerm
      syntax UnitPpeConstantTerm ::= PpeConstantTerm // need rules
    syntax IntegerRangeTerm ::= IntegerTerm ".." IntegerTerm 
              |  IntegerTerm ".." IntegerTerm "delta" IntegerTerm
              |  IntegerRangePpeConstantTerm
      syntax IntegerRangePpeConstantTerm ::= PpeConstantTerm // need rules
    syntax RealRangeTerm ::= RealTerm ".." RealTerm
           |  RealTerm ".." RealTerm "delta" RealTerm
           |  RealRangePpeConstantTerm
      syntax RealRangePpeConstantTerm ::= PpeConstantTerm // need rules
    syntax PpeTerm ::= PpeNameId
              | PpeSetId "::" PpeNameId
    syntax CmpClassifierTerm ::= "classifier" "(" UniCmpTypeRef ")"
            |  "classifier" "(" UniCmpImplRef ")"
    syntax RefTerm ::= "reference" "(" ContainedModelElementPath ")"
    syntax RecordTerm ::= "(" RecordFieldIdIdList ")"
      syntax RecordFieldIdIdList ::= RecordFieldIdId "=>" PpeValue ";"
                    |  RecordFieldIdId "=>" PpeValue ";" RecordFieldIdIdList 
        syntax RecordFieldIdId ::= Id 
    syntax ComputedTerm ::= "compute" "(" FunctionId ")"
      syntax FunctionId ::= Id
  syntax PpeConstantTerm ::= PpeConstantId 
             |  PpeSetId "::" PpeConstantId
         

endmodule

module PROPERTYEXPRESSION

//  imports PROPERTYEXPRESSION-SYNTAX
endmodule