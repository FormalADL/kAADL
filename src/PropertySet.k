module PROPERTYSET-SYNTAX
  syntax PpeSetId ::= Id
  syntax PpeSet ::= "property" "set" PpeSetId "is" PpeSetAssocDef "end" PpeSetId ";"
  syntax PpeSetAssocDef ::= ImportDecls 
                          | PpeTempDecls
			  | ImportDecls PpeTempDecls
  syntax ImportDecls ::= ImportDecl
                       | ImportDecls ImportDecls					  
  syntax PpeTempDecls ::= PpeTypeDecl
                        | PpeDefDecl
                        | PpeConstant
			| PpeTempDecls PpeTempDecls
endmodule

module PROPERTYSET
//  imports  PROPERTYSET-SYNTAX
endmodule