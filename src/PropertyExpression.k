module PROPERTYEXPRESSION-SYNTAX

syntax PpeExpression ::=   BooleanTerm 
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
		    |  "(" BooleanTerm ")"

syntax BooleanValue ::= "true" | "false"
syntax RealTerm::= SignedAadlrealOrConstant
syntax IntegerTerm ::= SignedAadlintegerOrConstant
syntax StringTerm ::= StringLiteral | StringPpeConstantTerm
syntax EnumerationTerm ::= EnumerationId | EnumerationPpeConstantTerm
syntax UnitTerm ::= UnitId | UnitPpeConstantTerm
syntax IntegerRangeTerm ::= IntegerTerm ".." IntegerTerm 
		         |  IntegerTerm ".." IntegerTerm "delta" IntegerTerm
		         |  IntegerRangePpeConstantTerm

syntax RealRangeTerm ::= RealTerm ".." RealTerm
		      |  RealTerm ".." RealTerm "delta" RealTerm
		      |  RealRangePpeConstantTerm 

syntax PpeTerm ::= PpeNameId
                 | PpeSetId "::" PpeNameId

syntax PpeConstantTerm ::= PpeConstantId 
			|  PpeSetId "::" PpeConstantId

syntax CmpClassifierTerm ::= "classifier" "(" UniCmpTypeRef ")"
			  |  "classifier" "(" UniCmpImplRef ")"

syntax RefTerm ::= "reference" "(" ContainedModelElementPath ")"

syntax RecordTerm ::= "(" RecordFieldIdIdList ")"
syntax RecordFieldIdIdList ::= RecordFieldIdId "=>" PpeValue ";"
			   |  RecordFieldIdId "=>" PpeValue ";" RecordFieldIdIdList 
syntax RecordFieldIdId ::= Id 

syntax ComputedTerm ::= "compute" "(" FunctionId ")"
syntax FunctionId ::= Id

syntax BooleanPpeConstantTerm ::= PpeConstantTerm // need rules
syntax StringLiteral ::= NODEF
syntax StringPpeConstantTerm ::=  PpeConstantTerm // need rules
syntax EnumerationId ::= NODEF
syntax EnumerationPpeConstantTerm ::= PpeConstantTerm // need rules
syntax UnitPpeConstantTerm ::= PpeConstantTerm // need rules
syntax IntegerRangePpeConstantTerm ::= PpeConstantTerm // need rules
syntax RealRangePpeConstantTerm ::= PpeConstantTerm // need rules
endmodule

module PROPERTYEXPRESSION

//  imports PROPERTYEXPRESSION-SYNTAX
endmodule