module PROPERTYTYPE-SYNTAX

syntax PpeTypeDecl ::= Id Mcolon Mtype PpeType MSemicolon 
syntax PpeType ::= Maadlboolen 
			| Maadlstring 
			| EnumerationType 
			| UnitsType 
			| NumberType 
			| RangeType 
			| ClassifierType 
			| RefType 
			| RecordType 
syntax EnumerationType ::= Menumeration MBracketLeft EnumerationLiteralIdList MBracketRight 
syntax EnumerationLiteralIdList ::= Id 
			| Id MComma EnumerationLiteralIdList 
syntax UnitsType ::= Munits UnitsList 
syntax UnitsList ::= MBracketLeft Id UnitIdList MBracketRight 
			| MBracketLeft Id MBracketRight 
syntax UnitIdList ::= MComma Id MRoughArrow Id MBrace NumericLiteral 
			| MComma Id MRoughArrow Id MBrace NumericLiteral UnitIdList 
syntax NumberType ::= RealInteger 
			| RealInteger Munits UnitsDesignator 
syntax RealInteger ::= Maadlreal 
			| Maadlinterger 
			| Maadlreal RealRange 
			| Maadlinterger IntegerRange 
syntax UnitsDesignator ::= UnitsUniPpeTypeId 
			| UnitsList 
syntax UnitsUniPpeTypeId ::= Id 
			| Id MDoubleColon Id 
syntax RealRange ::= SignedAadlrealOrConstant MDoubleDiont SignedAadlrealOrConstant 

syntax IntegerRange ::= SignedAadlintegerOrConstant MDoubleDiont SignedAadlintegerOrConstant 

syntax SignedAadlrealOrConstant ::= SignedAadlreal 
			| RealPpeConstantTerm 
			| Sign RealPpeConstantTerm 
syntax RealPpeConstantTerm ::= PpeConstantTerm 
syntax SignedAadlintegerOrConstant ::= SignedAadlinteger 
			| IntegerPpeConstantTerm 
			| Sign IntegerPpeConstantTerm 
syntax Sign ::= MMinus 
			| MPlus 
syntax SignedAadlinteger ::= Sign IntegerLiteral Id 
			| Sign IntegerLiteral 
			| IntegerLiteral Id 
			| IntegerLiteral 
syntax SignedAadlreal ::= Sign RealLiteral Id 
			| Sign RealLiteral 
			| RealLiteral Id 
			| RealLiteral 
syntax RangeType ::= Mrange Mof NumberType 
			| Mrange Mof Id 
syntax ClassifierType ::= Mclassifier 
			| Mclassifier MBracketLeft ClassifierCategoryRefList MBracketRight 
syntax ClassifierCategoryRef ::= ClassifierQualifiedMetaModelId 
syntax ClassifierQualifiedMetaModelId ::= QualifiedMetaModelId 
syntax QualifiedMetaModelId ::= MetaModelClassId 
			| MBraceLeft Id MAsteriskBrace3 MetaModelClassId 
syntax MetaModelClassId ::= Id 
			| Id MetaModelClassId 
syntax RefType ::= Mreference 
			| Mreference MBracketLeft RefCategoryList MBracketRight 
syntax RefCategoryList ::= Id 
			| Id MComma RefCategoryList 
syntax UniPpeTypeId ::= Id 
			| Id MDoubleColon Id 
syntax RecordType ::= Mrecord MBracketLeft RecordFieldList MBracketRight 
syntax RecordFieldList ::= RecordField 
			| RecordField RecordFieldList 
syntax RecordField ::= Id Mcolon Mlist Mof PpeTypeDesignator MSemicolon 
			| Id Mcolon PpeTypeDesignator MSemicolon 
syntax PpeTypeDesignator ::= UniPpeTypeId 
			| PpeType 
syntax ClassifierCategoryRefList ::= ClassifierCategoryRef 
			| ClassifierCategoryRef MComma ClassifierCategoryRefList 
syntax IntegerLiteral ::= Int 
syntax IntegerPpeConstantTerm ::= PpeConstantTerm 
endmodule
