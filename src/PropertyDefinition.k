module PROPERTYDEFINATION-SYNTAX
// 11.1.2
  syntax PpeDefDecl ::= PpeNameId ":" PpeDefDeclAssocDef ";"
    syntax PpeNameId ::= Id
    syntax PpeDefDeclAssocDef ::= "inherit" SingleValuedPpe "applies" "to" PpeOwnerList 
                     |  "inherit" MultiValuedPpe "applies" "to" PpeOwnerList 
                     |   SingleValuedPpe "applies" "to" PpeOwnerList 
                     |   MultiValuedPpe "applies" "to" PpeOwnerList 
      syntax SingleValuedPpe ::= PpeTypeDesignator | PpeTypeDesignator "=>" DefaultPpeExpression
        syntax DefaultPpeExpression ::= PpeExpression
      syntax MultiValuedPpe ::= ListOf PpeTypeDesignator "=>" DefaultPpeListValue
                | ListOf PpeTypeDesignator 
        syntax ListOf ::= "list" "of " |  "list" "of" ListOf 
        syntax DefaultPpeListValue ::= PpeListValue
      syntax PpeOwnerList ::= PpeOwner | PpeOwner "," PpeOwnerList
        syntax PpeOwner ::= NamedElementQualifiedMetaModelId | UniClassifierRef
          syntax UniClassifierRef ::= UniCmpClassifierRef | UniFetGroupTypeRef


endmodule

module PROPERTYDEFINATION

//  imports PROPERTYDEFINATION-SYNTAX
endmodule