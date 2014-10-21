module PROPERTYSET-SYNTAX

syntax PpeSet ::= Mproperty Mset Id Mis PpeSetAssocDef Mend Id MSemicolon 
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
