module PROPERTYSET-SYNTAX

syntax PpeSet ::= Mproperty Mset Id Mis PpeSetAssocDef Mend Id MSemicolon 
		| Mproperty Mset Id Mis Mend Id MSemicolon 
syntax PpeSetAssocDef ::= ImportDecls 
			| PpeTempDecls 
			| ImportDecls PpeSetAssocDef 
			| PpeTempDecls PpeSetAssocDef
syntax ImportDecls ::= ImportDecl 
			| ImportDecl ImportDecls 
syntax PpeTempDecls ::= PpeTypeDecl 
			| PpeDefDecl 
			| PpeConstant 
			| PpeTypeDecl PpeTempDecls 
			| PpeDefDecl PpeTempDecls 
			| PpeConstant PpeTempDecls 
endmodule
