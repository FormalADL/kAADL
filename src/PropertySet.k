module PROPERTYSET-SYNTAX

syntax PpeSet ::= Mproperty Mset Id Mis PpeSetAssocDef Mend Id MSemicolon 
		| Mproperty Mset Id Mis Mend Id MSemicolon 
syntax PpeSetAssocDef ::= ImportDecl 
			| PpeTempDecls 
			| ImportDecl PpeSetAssocDef 
			| PpeTempDecls PpeSetAssocDef
//syntax ImportDecls ::= ImportDecl 
//			| ImportDecl ImportDecls 
syntax PpeTempDecls ::= PpeTypeDecl 
			| PpeDefDecl 
			| PpeConstant 
endmodule
