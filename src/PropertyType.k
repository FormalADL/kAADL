module PROPERTYTYPE-SYNTAX
// 11.1.1  check
  syntax PpeTypeDecl ::= PpeTypeIdentifier ":" "type " PpeType ";"
    syntax PpeTypeIdentifier ::= Id
    syntax PpeType ::= "aadlboolen "
             |  "aadlstring "
             |  EnumerationType
             |  UnitsType
             |  NumberType
             |  RangeType
             |  ClassifierType
             |  RefType
             |  RecordType
      syntax EnumerationType ::= "enumeration""(" EnumerationLiteralIdentifierList ")"
        syntax EnumerationLiteralIdentifierList ::= EnumerationLiteralIdentifier | EnumerationLiteralIdentifier "," EnumerationLiteralIdentifierList
          syntax EnumerationLiteralIdentifier ::= Id
      syntax UnitsType ::= "units" UnitsList
        syntax UnitsList ::= "(" UnitIdentifier UnitIdentifierList ")"
          syntax UnitIdentifier ::= Id
          syntax UnitIdentifierList ::= NoneStatement
                   |  "," UnitIdentifier "=>" UnitIdentifier "*" NumericLiteral 
                   |   "," UnitIdentifier "=>" UnitIdentifier "*" NumericLiteral  UnitIdentifierList
            syntax NumericLiteral ::= NODEF // define in 15
      syntax NumberType ::= RealInteger 
             |  RealInteger "units "  UnitsDesignator // i do not know is here the spares is needed
        syntax RealInteger ::= "aadlreal " | "aadlinterger "
                |  "aadlreal " RealRange
                |  "aadlinterger " IntegerRange
          syntax RealRange ::= RealLowerBound ".." RealUpperBound
            syntax RealLowerBound ::= SignedAadlrealOrConstant
            syntax RealUpperBound ::= SignedAadlrealOrConstant 
              syntax SignedAadlrealOrConstant ::= SignedAddlreal
                        | RealPpeConstantTerm
                        | Sign RealPpeConstantTerm
                syntax SignedAddlreal ::= Sign RealLiteral UnitIdentifier
                        |  Sign RealLiteral
                        |  RealLiteral UnitIdentifier
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
                syntax SignedAddlinteger ::= Sign IntegerLiteral UnitIdentifier
                        |  Sign IntegerLiteral
                        |  IntegerLiteral UnitIdentifier
                        |  IntegerLiteral 
                  syntax IntegerLiteral ::= "not define"// in 15
                  
                syntax IntegerPpeConstantTerm ::=  PpeConstantTerm // here need rule to check
        syntax UnitsDesignator ::= UnitsUniquePpeTypeIdentifier | UnitsList
          syntax UnitsUniquePpeTypeIdentifier ::= Id
      syntax RangeType ::= "range ""of " NumberType
            |  "range ""of " NumberUniquePpeTypeIdentifier
        syntax NumberUniquePpeTypeIdentifier ::= Id
  
      syntax ClassifierType ::= "classifier " | "classifier""("ClassifierCategoryRefList")"
        syntax ClassifierCategoryRefList ::= ClassifierCategoryRef
                  |  ClassifierCategoryRefList "," ClassifierCategoryRefList
          syntax ClassifierCategoryRef ::= ClassifierQualifiedMetaModelIdentifier
            syntax ClassifierQualifiedMetaModelIdentifier ::= QualifiedMetaModelIdentifier
      syntax RefType ::= "reference" | "reference " "(" RefCategoryList ")"
        syntax RefCategoryList ::= RefCategory | RefCategoryList "," RefCategoryList
          syntax RefCategory ::= NamedElementQualifiedMetaModelIdentifier
            syntax NamedElementQualifiedMetaModelIdentifier ::= NODEF

      syntax RecordType ::= "record""(" RecordFieldList ")"
        syntax RecordFieldList ::= RecordField | RecordField RecordFieldList
          syntax RecordField ::= FieldIdentifier ":" "list ""of " PpeTypeDesignator ";"
                   | FieldIdentifier ":" PpeTypeDesignator ";"
            syntax FieldIdentifier ::= NODEF
            syntax PpeTypeDesignator ::= UniquePpeTypeIdentifier | PpeType
              syntax UniquePpeTypeIdentifier ::= NODEF

    syntax QualifiedMetaModelIdentifier ::= MetaModelClassIdentifier 
                 |  "{" AnnexIdentifier "}**" MetaModelClassIdentifier
      syntax MetaModelClassIdentifier ::= Identifier | Identifier MetaModelClassIdentifier
//      syntax AnnexIdentifier ::= NODEF

endmodule

module PROPERTYTYPE

 // imports PROPERTYTYPE-SYNTAX

endmodule