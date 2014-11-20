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
			
syntax PpeExpressionWithoutBooleanTerm ::=   RealTerm 
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
syntax UnitTerm ::=  UnitPpeConstantTerm 
syntax IntegerRangeTerm ::= AmbSignedAadlintegerOrConstantDoubleDiontSignedAadlintegerOrConstant 
			| IntegerTerm MDoubleDiont IntegerTerm Mdelta IntegerTerm 
			| IntegerRangePpeConstantTerm 
syntax RealRangeTerm ::= RealRange // RealTerm MDoubleDiont RealTerm 
			| RealTerm MDoubleDiont RealTerm Mdelta RealTerm 
			| RealRangePpeConstantTerm 
syntax PpeTerm ::= AmbIdDoubleColonId
syntax PpeConstantTerm ::= AmbIdDoubleColonId


syntax CmpClassifierTerm ::= AmbClassifierBracketLeftIdBracketRight 
			| Mclassifier MBracketLeft Id MDoubleColon PkgName MBracketRight 
			| Mclassifier MBracketLeft PkgName MDoubleColon Id MBracketRight 

syntax RefTerm ::= Mreference MBracketLeft AnnexPath MBracketRight 
			|  Mreference MBracketLeft ContainedModelElementList AnnexPath MBracketRight 
			|  Mreference MBracketLeft  ContainedModelElement MPoint ContainedModelElementList MBracketRight
			|  Mreference MBracketLeft NamedElementArraySelectionName MBracketRight 
			|  AmbReferenceBracketLeftIdBracketRight 

syntax RecordTerm ::= MBracketLeft RecordFieldIdIdList MBracketRight 
syntax RecordFieldIdIdList ::= AmbIdRoughArrowPpeValue 
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
