module PROPERTYDEFINATION-SYNTAX
// 11.1.2
  syntax PpeDefinitionDecl ::= PpeNameIdentifier ":" PpeDefDeclAssocDef ";"
    syntax PpeNameIdentifier ::= Id
    syntax PpeDefDeclAssocDef ::= "inherit " SingleValuedPpe "applies ""to " PpeOwnerList 
                     |  "inherit " MultiValuedPpe "applies ""to " PpeOwnerList 
                     |   SingleValuedPpe "applies ""to " PpeOwnerList 
                     |   MultiValuedPpe "applies ""to " PpeOwnerList 
      syntax SingleValuedPpe ::= PpeTypeDesignator | PpeTypeDesignator "=>" DefaultPpeExpression
        syntax DefaultPpeExpression ::= PpeExpression
      syntax MultiValuedPpe ::= ListOf PpeTypeDesignator "=>" DefaultPpeListValue
                | ListOf PpeTypeDesignator 
        syntax ListOf ::= "list ""of " |  "list ""of " ListOf 
        syntax DefaultPpeListValue ::= PpeListValue
      syntax PpeOwnerList ::= PpeOwner | PpeOwner "," PpeOwnerList
        syntax PpeOwner ::= NamedElementQualifiedMetaModelIdentifier | UniqueClassifierReference
          syntax UniqueClassifierReference ::= UniqueCmpClassifierReference | UniqueFetGroupTypeReference


endmodule

module PROPERTYDEFINATION

//  imports PROPERTYDEFINATION-SYNTAX
endmodule