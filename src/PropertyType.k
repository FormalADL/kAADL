module PROPERTYTYPE-SYNTAX
// 11.1.1  check
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
                   |  "," UnitId "=>" UnitId "*" NumericLiteral 
                   |   "," UnitId "=>" UnitId "*" NumericLiteral  UnitIdList

      syntax NumberType ::= RealInteger 
             |  RealInteger "units "  UnitsDesignator // i do not know is here the spares is needed
        syntax RealInteger ::= "aadlreal" | "aadlinterger"
                |  "aadlreal" RealRange
                |  "aadlinterger" IntegerRange
          syntax RealRange ::= RealLowerBound ".." RealUpperBound
            syntax RealLowerBound ::= SignedAadlrealOrConstant
            syntax RealUpperBound ::= SignedAadlrealOrConstant 
              syntax SignedAadlrealOrConstant ::= SignedAddlreal
                        | RealPpeConstantTerm
                        | Sign RealPpeConstantTerm
                syntax SignedAddlreal ::= Sign RealLiteral UnitId
                        |  Sign RealLiteral
                        |  RealLiteral UnitId
                        |  RealLiteral 
                  syntax RealLiteral ::= NODEF // in 15
                syntax RealPpeConstantTerm ::= PpeConstantTerm // here need rule to check
                syntax Sign ::= "-" | "+"
          syntax IntegerRange ::= IntegerLowerBound ".." IntegerUpperBound
            syntax IntegerLowerBound ::= SignedAadlintegerOrConstant
            syntax IntegerUpperBound ::= SignedAadlintegerOrConstant
              syntax SignedAadlintegerOrConstant ::= SignedAddlinteger
                        | IntegerPpeConstantTerm
                        | Sign IntegerPpeConstantTerm
                syntax SignedAddlinteger ::= Sign IntegerLiteral UnitId
                        |  Sign IntegerLiteral
                        |  IntegerLiteral UnitId
                        |  IntegerLiteral 
                  syntax IntegerLiteral ::= Int // in 15
                  
                syntax IntegerPpeConstantTerm ::=  PpeConstantTerm // here need rule to check
        syntax UnitsDesignator ::= UnitsUniPpeTypeId | UnitsList
          syntax UnitsUniPpeTypeId ::= Id
      syntax RangeType ::= "range" "of" NumberType
            |  "range" "of" NumberUniPpeTypeId
        syntax NumberUniPpeTypeId ::= Id
  
      syntax ClassifierType ::= "classifier" | "classifier" "(" ClassifierCategoryRefList ")"
        syntax ClassifierCategoryRefList ::= ClassifierCategoryRef
                  |  ClassifierCategoryRefList "," ClassifierCategoryRefList
          syntax ClassifierCategoryRef ::= ClassifierQualifiedMetaModelId
            syntax ClassifierQualifiedMetaModelId ::= QualifiedMetaModelId
      syntax RefType ::= "reference" | "reference" "(" RefCategoryList ")"
        syntax RefCategoryList ::= RefCategory | RefCategoryList "," RefCategoryList
          syntax RefCategory ::= NamedElementQualifiedMetaModelId
            syntax NamedElementQualifiedMetaModelId ::= NODEF

      syntax RecordType ::= "record" "(" RecordFieldList ")"
        syntax RecordFieldList ::= RecordField | RecordField RecordFieldList
          syntax RecordField ::= FieldId ":" "list" "of" PpeTypeDesignator ";"
                   | FieldId ":" PpeTypeDesignator ";"
            syntax FieldId ::= NODEF
            syntax PpeTypeDesignator ::= UniPpeTypeId | PpeType
              syntax UniPpeTypeId ::= NODEF

    syntax QualifiedMetaModelId ::= MetaModelClassId 
                 |  "{" AnnexId "}**" MetaModelClassId
      syntax MetaModelClassId ::= Id | Id MetaModelClassId
//      syntax AnnexId ::= NODEF

endmodule

module PROPERTYTYPE

 // imports PROPERTYTYPE-SYNTAX

endmodule