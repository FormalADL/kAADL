module PROPERTYEXPRESSION-SYNTAX

syntax PpeExpression ::= BooleanTerm 
			| RealTerm 
			| IntegerTerm 
			| StringTerm 
			| EnumerationTerm 
			| UnitTerm 
			| RealRangeTerm 
			| IntegerRangeTerm 
			| PpeTerm 
			| CmpClassifierTerm 
			| RefTerm 
			| RecordTerm 
			| ComputedTerm 
syntax BooleanTerm ::= BooleanValue 
			| BooleanPpeConstantTerm 
			| Mnot BooleanTerm 
			| BooleanTerm Mand BooleanTerm 
			| BooleanTerm Mor BooleanTerm 
	//		| MBracketLeft BooleanTerm MBracketRight 
syntax BooleanValue ::= Mtrue 
			| Mfalse 
syntax RealTerm::= SignedAadlrealOrConstant  
syntax IntegerTerm ::= SignedAadlintegerOrConstant 
syntax StringTerm ::= StringLiteral 
			| StringPpeConstantTerm 
syntax EnumerationTerm ::= EnumerationId 
			| EnumerationPpeConstantTerm 
syntax UnitTerm ::= Id 
			| UnitPpeConstantTerm 
syntax IntegerRangeTerm ::= IntegerTerm MDoubleDiont IntegerTerm 
			| IntegerTerm MDoubleDiont IntegerTerm Mdelta IntegerTerm 
			| IntegerRangePpeConstantTerm 
syntax RealRangeTerm ::= RealTerm MDoubleDiont RealTerm 
			| RealTerm MDoubleDiont RealTerm Mdelta RealTerm 
			| RealRangePpeConstantTerm 
syntax PpeTerm ::= Id 
			| Id MDoubleColon Id 
syntax PpeConstantTerm ::= Id 
			| Id MDoubleColon Id 
syntax CmpClassifierTerm ::= Mclassifier MBracketLeft UniCmpTypeRef MBracketRight 
			| Mclassifier MBracketLeft UniCmpImplRef MBracketRight 
syntax RefTerm ::= Mreference MBracketLeft ContainedModelElementPath MBracketRight 
syntax RecordTerm ::= MBracketLeft RecordFieldIdIdList MBracketRight 
syntax RecordFieldIdIdList ::= Id MRoughArrow PpeValue MSemicolon 
			| Id MRoughArrow PpeValue MSemicolon RecordFieldIdIdList 
syntax ComputedTerm ::= Mcompute MBracketLeft Id MBracketRight 
syntax BooleanPpeConstantTerm ::= PpeConstantTerm 
syntax StringLiteral ::= NODEF 
syntax StringPpeConstantTerm ::= PpeConstantTerm 
syntax EnumerationId ::= NODEF 
syntax EnumerationPpeConstantTerm ::= PpeConstantTerm 
syntax UnitPpeConstantTerm ::= PpeConstantTerm 
syntax IntegerRangePpeConstantTerm ::= PpeConstantTerm 
syntax RealRangePpeConstantTerm ::= PpeConstantTerm 
endmodule
