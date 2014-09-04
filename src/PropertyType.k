module PROPERTYTYPE-SYNTAX

syntax PpeTypeDecl ::= PpeTypeId ":" "type" PpeType ";"
	syntax PpeTypeId ::= Id
syntax PpeType ::= "aadlboolen"
             |  "aadlstring"
             |  EnumerationType
             |  UnitsType
             |  NumberType
             |  RangeType
             |  ClassifierType
             |  RefType
             |  RecordType

syntax EnumerationType ::= "enumeration""(" EnumerationLiteralIdList ")"
	 syntax EnumerationLiteralIdList ::= EnumerationLiteralId | EnumerationLiteralId "," EnumerationLiteralIdList
         syntax EnumerationLiteralId ::= Id
	 	
syntax UnitsType ::= "units" UnitsList
	 syntax UnitsList ::= "(" UnitId UnitIdList ")"
	 syntax UnitId ::= Id
	 syntax UnitIdList ::= NoneStatement
			     | "," UnitId "=>" UnitId "*" NumericLiteral 
			     | "," UnitId "=>" UnitId "*" NumericLiteral  UnitIdList

syntax NumberType ::= RealInteger 
                   |  RealInteger "units"  UnitsDesignator 
	syntax RealInteger ::= "aadlreal" | "aadlinterger"
                            |  "aadlreal" RealRange
                            |  "aadlinterger" IntegerRange

 syntax UnitsDesignator ::= UnitsUniPpeTypeId | UnitsList
	syntax UnitsUniPpeTypeId ::= Id

syntax RealRange ::= RealLowerBound ".." RealUpperBound
        syntax RealLowerBound ::= SignedAadlrealOrConstant
        syntax RealUpperBound ::= SignedAadlrealOrConstant

syntax IntegerRange ::= IntegerLowerBound ".." IntegerUpperBound
        syntax IntegerLowerBound ::= SignedAadlintegerOrConstant
        syntax IntegerUpperBound ::= SignedAadlintegerOrConstant

syntax SignedAadlrealOrConstant ::= SignedAadlreal
				| RealPpeConstantTerm
				| Sign RealPpeConstantTerm
	syntax RealPpeConstantTerm ::= PpeConstantTerm 	

syntax SignedAadlintegerOrConstant ::= SignedAadlinteger
				| IntegerPpeConstantTerm
				| Sign IntegerPpeConstantTerm

syntax Sign ::= "-" | "+"

syntax SignedAadlinteger ::= Sign IntegerLiteral UnitId
                         |  Sign IntegerLiteral
                         |  IntegerLiteral UnitId
                         |  IntegerLiteral
			 
syntax SignedAadlreal ::= Sign RealLiteral UnitId
                         |  Sign RealLiteral
                         |  RealLiteral UnitId
                         |  RealLiteral 

syntax RangeType ::= "range" "of" NumberType
		  |  "range" "of" NumberUniPpeTypeId
	syntax NumberUniPpeTypeId ::= Id

syntax ClassifierType ::= "classifier" 
			| "classifier" "(" ClassifierCategoryRefList ")"

syntax ClassifierCategoryRef ::= ClassifierQualifiedMetaModelId
syntax ClassifierQualifiedMetaModelId ::= QualifiedMetaModelId
syntax QualifiedMetaModelId ::= MetaModelClassId 
			     |  "{" AnnexId "}**" MetaModelClassId
	syntax MetaModelClassId ::= Id | Id MetaModelClassId

syntax RefType ::= "reference" | "reference" "(" RefCategoryList ")"
	 syntax RefCategoryList ::= RefCategory 
				  | RefCategory "," RefCategoryList

syntax RefCategory ::= NamedElementQualifiedMetaModelId

syntax UniPpeTypeId ::= PpeTypeId | PpeSetId "::" PpeTypeId

syntax RecordType ::= "record" "(" RecordFieldList ")"
	syntax RecordFieldList ::= RecordField 
				 | RecordField RecordFieldList

syntax RecordField ::= FieldId ":" "list" "of" PpeTypeDesignator ";"
                     | FieldId ":" PpeTypeDesignator ";"
		
syntax PpeTypeDesignator ::= UniPpeTypeId | PpeType

 syntax ClassifierCategoryRefList ::= ClassifierCategoryRef
				   |  ClassifierCategoryRef "," ClassifierCategoryRefList

syntax IntegerLiteral ::= Int
syntax IntegerPpeConstantTerm ::=  PpeConstantTerm 
syntax NamedElementQualifiedMetaModelId ::= NODEF
syntax FieldId ::= NODEF

endmodule


module PROPERTYTYPE

 // imports PROPERTYTYPE-SYNTAX

endmodule