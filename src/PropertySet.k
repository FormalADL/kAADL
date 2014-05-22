module PROPERTYSET-SYNTAX
// 11.1 check
  syntax PpeSet ::= "property ""set " PpeSetIdentifier "is "PpeSetAssocDefination "end "PpeSetIdentifier";"
    syntax PpeSetAssocDefination ::= ImportDeclarationList PpeTypeDeclarationList 
               |  ImportDeclarationList PpeDefinitionDeclarationList
               |  ImportDeclarationList PpeConstantList
      syntax ImportDeclarationList ::= NoneStatement 
                  |  ImportDeclaration
                  |  ImportDeclarationList ImportDeclarationList
      syntax PpeTypeDeclarationList ::= NoneStatement
                   | PpeTypeDeclaration
                   | PpeTypeDeclarationList PpeTypeDeclarationList
      syntax PpeDefinitionDeclarationList ::= NoneStatement
                   | PpeDefinitionDeclaration
                   | PpeDefinitionDeclarationList PpeDefinitionDeclarationList
      syntax PpeConstantList ::= NoneStatement
                 |  PpeConstant
                 |  PpeConstantList PpeConstantList

endmodule

module PROPERTYSET

//  imports  PROPERTYSET-SYNTAX
endmodule