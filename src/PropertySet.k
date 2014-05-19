module PROPERTYSET-SYNTAX
// 11.1 check
  syntax PropertySet ::= "property ""set " PropertySetIdentifier "is "PropertySetAssocDefination "end "PropertySetIdentifier";"
    syntax PropertySetAssocDefination ::= ImportDeclarationList PropertyTypeDeclarationList 
               |  ImportDeclarationList PropertyDefinitionDeclarationList
               |  ImportDeclarationList PropertyConstantList
      syntax ImportDeclarationList ::= NoneStatement 
                  |  ImportDeclaration
                  |  ImportDeclarationList ImportDeclarationList
      syntax PropertyTypeDeclarationList ::= NoneStatement
                   | PropertyTypeDeclaration
                   | PropertyTypeDeclarationList PropertyTypeDeclarationList
      syntax PropertyDefinitionDeclarationList ::= NoneStatement
                   | PropertyDefinitionDeclaration
                   | PropertyDefinitionDeclarationList PropertyDefinitionDeclarationList
      syntax PropertyConstantList ::= NoneStatement
                 |  PropertyConstant
                 |  PropertyConstantList PropertyConstantList

endmodule

module PROPERTYSET

  imports  PROPERTYSET-SYNTAX
endmodule