module PROPERTYSET-SYNTAX
// 11.1 check
  syntax PpeSetId ::= Id
  syntax PpeSet ::= "property" "set" PpeSetId "is" PpeSetAssocDef "end" PpeSetId ";"
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