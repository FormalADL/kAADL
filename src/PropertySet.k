module PROPERTYSET-SYNTAX
  syntax PpeSetId ::= Id
  syntax PpeSet ::=  Mproperty   Mset  PpeSetId  Mis  PpeSetAssocDef  Mend  PpeSetId  MSemicolon 
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
