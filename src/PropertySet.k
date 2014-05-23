module PROPERTYSET-SYNTAX
// 11.1 check
  syntax PpeSet ::= "property ""set " PpeSetIdentifier "is "PpeSetAssocDef "end "PpeSetIdentifier";"
    syntax PpeSetAssocDef ::= ImportDeclList PpeTypeDeclList 
               |  ImportDeclList PpeDefinitionDeclList
               |  ImportDeclList PpeConstantList
      syntax ImportDeclList ::= NoneStatement 
                  |  ImportDecl
                  |  ImportDeclList ImportDeclList
      syntax PpeTypeDeclList ::= NoneStatement
                   | PpeTypeDecl
                   | PpeTypeDeclList PpeTypeDeclList
      syntax PpeDefinitionDeclList ::= NoneStatement
                   | PpeDefinitionDecl
                   | PpeDefinitionDeclList PpeDefinitionDeclList
      syntax PpeConstantList ::= NoneStatement
                 |  PpeConstant
                 |  PpeConstantList PpeConstantList

endmodule

module PROPERTYSET

//  imports  PROPERTYSET-SYNTAX
endmodule