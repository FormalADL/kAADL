module PROPERTYDEFINATION-SYNTAX
// 11.1.2
  syntax PropertyDefinitionDeclaration ::= PropertyNameIdentifier ":" PropertyDefinationDeclarationAssocDefination ";"
    syntax PropertyNameIdentifier ::= Id
    syntax PropertyDefinationDeclarationAssocDefination ::= "inherit " SingleValuedProperty "applies ""to " PropertyOwnerList 
                     |  "inherit " MultiValuedProperty "applies ""to " PropertyOwnerList 
                     |   SingleValuedProperty "applies ""to " PropertyOwnerList 
                     |   MultiValuedProperty "applies ""to " PropertyOwnerList 
      syntax SingleValuedProperty ::= PropertyTypeDesignator | PropertyTypeDesignator "=>" DefaultPropertyExpression
        syntax DefaultPropertyExpression ::= PropertyExpression
      syntax MultiValuedProperty ::= ListOf PropertyTypeDesignator "=>" DefaultPropertyListValue
                | ListOf PropertyTypeDesignator 
        syntax ListOf ::= "list ""of " |  "list ""of " ListOf 
        syntax DefaultPropertyListValue ::= PropertyListValue
      syntax PropertyOwnerList ::= PropertyOwner | PropertyOwner "," PropertyOwnerList
        syntax PropertyOwner ::= NamedElementQualifiedMetaModelIdentifier | UniqueClassifierReference
          syntax UniqueClassifierReference ::= UniqueComponentClassifierReference | UniqueFeatureGroupTypeReference


endmodule

module PROPERTYDEFINATION

//  imports PROPERTYDEFINATION-SYNTAX
endmodule