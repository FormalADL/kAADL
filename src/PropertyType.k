module PROPERTYTYPE-SYNTAX

syntax PpeTypeDecl ::= PpeTypeId  Mcolon   Mtype  PpeType  MSemicolon 
	syntax PpeTypeId ::= Id
syntax PpeType ::=  Maadlboolen 
             |   Maadlstring 
             |  EnumerationType
             |  UnitsType
             |  NumberType
             |  RangeType
             |  ClassifierType
             |  RefType
             |  RecordType

syntax EnumerationType ::=  Menumeration  MBracketLeft  EnumerationLiteralIdList  MBracketRight 
	 syntax EnumerationLiteralIdList ::= EnumerationLiteralId | EnumerationLiteralId  MComma  EnumerationLiteralIdList
         syntax EnumerationLiteralId ::= Id
	 	
syntax UnitsType ::=  Munits  UnitsList
	 syntax UnitsList ::=  MBracketLeft  UnitId UnitIdList  MBracketRight 
			   |   MBracketLeft  UnitId   MBracketRight 
	 syntax UnitId ::= Id
	 syntax UnitIdList ::= NoneStatement
			     |  MComma  UnitId  MRoughArrow  UnitId  MBrace  NumericLiteral 
			     |  MComma  UnitId  MRoughArrow  UnitId  MBrace  NumericLiteral  UnitIdList

syntax NumberType ::= RealInteger 
                   |  RealInteger  Munits   UnitsDesignator 
	syntax RealInteger ::=  Maadlreal  |  Maadlinterger 
                            |   Maadlreal  RealRange
                            |   Maadlinterger  IntegerRange

 syntax UnitsDesignator ::= UnitsUniPpeTypeId | UnitsList
	syntax UnitsUniPpeTypeId ::= Id
                                  | Id MDoubleColon Id


syntax RealRange ::= RealLowerBound  MDoubleDiont  RealUpperBound
        syntax RealLowerBound ::= SignedAadlrealOrConstant
        syntax RealUpperBound ::= SignedAadlrealOrConstant

syntax IntegerRange ::= IntegerLowerBound  MDoubleDiont  IntegerUpperBound
        syntax IntegerLowerBound ::= SignedAadlintegerOrConstant
        syntax IntegerUpperBound ::= SignedAadlintegerOrConstant

syntax SignedAadlrealOrConstant ::= SignedAadlreal
				| RealPpeConstantTerm
				| Sign RealPpeConstantTerm
	syntax RealPpeConstantTerm ::= PpeConstantTerm 	

syntax SignedAadlintegerOrConstant ::= SignedAadlinteger
				| IntegerPpeConstantTerm
				| Sign IntegerPpeConstantTerm

syntax Sign ::=  MMinus  |  MPlus 

syntax SignedAadlinteger ::= Sign IntegerLiteral UnitId
                         |  Sign IntegerLiteral
                         |  IntegerLiteral UnitId
                         |  IntegerLiteral
			 
syntax SignedAadlreal ::= Sign RealLiteral UnitId
                         |  Sign RealLiteral
                         |  RealLiteral UnitId
                         |  RealLiteral 

syntax RangeType ::=  Mrange   Mof  NumberType
		  |   Mrange   Mof  NumberUniPpeTypeId
	syntax NumberUniPpeTypeId ::= Id

syntax ClassifierType ::=  Mclassifier  
			|  Mclassifier   MBracketLeft  ClassifierCategoryRefList  MBracketRight 

syntax ClassifierCategoryRef ::= ClassifierQualifiedMetaModelId
syntax ClassifierQualifiedMetaModelId ::= QualifiedMetaModelId
syntax QualifiedMetaModelId ::= MetaModelClassId 
			     |   MBraceLeft  AnnexId  MAsteriskBrace3  MetaModelClassId
	syntax MetaModelClassId ::= Id | Id MetaModelClassId

syntax RefType ::=  Mreference  |  Mreference   MBracketLeft  RefCategoryList  MBracketRight 
	 syntax RefCategoryList ::= RefCategory 
				  | RefCategory  MComma  RefCategoryList

syntax RefCategory ::= NamedElementQualifiedMetaModelId

syntax UniPpeTypeId ::= PpeTypeId | PpeSetId  MDoubleColon  PpeTypeId

syntax RecordType ::=  Mrecord   MBracketLeft  RecordFieldList  MBracketRight 
	syntax RecordFieldList ::= RecordField 
				 | RecordField RecordFieldList

syntax RecordField ::= FieldId  Mcolon   Mlist   Mof  PpeTypeDesignator  MSemicolon 
                     | FieldId  Mcolon  PpeTypeDesignator  MSemicolon 
		
syntax PpeTypeDesignator ::= UniPpeTypeId | PpeType

 syntax ClassifierCategoryRefList ::= ClassifierCategoryRef
				   |  ClassifierCategoryRef  MComma  ClassifierCategoryRefList

syntax IntegerLiteral ::= Int
syntax IntegerPpeConstantTerm ::=  PpeConstantTerm 
syntax NamedElementQualifiedMetaModelId ::= NODEF
syntax FieldId ::= Id

endmodule


module PROPERTYTYPE

 // imports PROPERTYTYPE-SYNTAX

endmodule
