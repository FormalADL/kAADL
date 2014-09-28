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
		    |   Mnot  BooleanTerm
		    |  BooleanTerm  Mand  BooleanTerm
		    |  BooleanTerm  Mor BooleanTerm
		    |   MBracketLeft  BooleanTerm  MBracketRight 

syntax BooleanValue ::=  Mtrue  |  Mfalse 
syntax RealTerm::= SignedAadlrealOrConstant
syntax IntegerTerm ::= SignedAadlintegerOrConstant
syntax StringTerm ::= StringLiteral | StringPpeConstantTerm
syntax EnumerationTerm ::= EnumerationId | EnumerationPpeConstantTerm
syntax UnitTerm ::= UnitId | UnitPpeConstantTerm
syntax IntegerRangeTerm ::= IntegerTerm  MDoubleDiont  IntegerTerm 
		         |  IntegerTerm  MDoubleDiont  IntegerTerm  Mdelta  IntegerTerm
		         |  IntegerRangePpeConstantTerm

syntax RealRangeTerm ::= RealTerm  MDoubleDiont  RealTerm
		      |  RealTerm  MDoubleDiont  RealTerm  Mdelta  RealTerm
		      |  RealRangePpeConstantTerm 

syntax PpeTerm ::= PpeNameId
                 | PpeSetId  MDoubleColon  PpeNameId

syntax PpeConstantTerm ::= PpeConstantId 
			|  PpeSetId  MDoubleColon  PpeConstantId

syntax CmpClassifierTerm ::=  Mclassifier   MBracketLeft  UniCmpTypeRef  MBracketRight 
			  |   Mclassifier   MBracketLeft  UniCmpImplRef  MBracketRight 

syntax RefTerm ::=  Mreference   MBracketLeft  ContainedModelElementPath  MBracketRight 

syntax RecordTerm ::=  MBracketLeft  RecordFieldIdIdList  MBracketRight 
syntax RecordFieldIdIdList ::= RecordFieldIdId  MRoughArrow  PpeValue  MSemicolon 
			   |  RecordFieldIdId  MRoughArrow  PpeValue  MSemicolon  RecordFieldIdIdList 
syntax RecordFieldIdId ::= Id 

syntax ComputedTerm ::=  Mcompute   MBracketLeft  FunctionId  MBracketRight 
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
