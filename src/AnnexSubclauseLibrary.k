module ANNEXSUBCLAUSELIBRARY-SYNTAX

syntax AnnexSubclause ::= Mannex Id AnnexSubclauseAssocDef MSemicolon 
syntax AnnexSubclauseAssocDef ::= MAsteriskBrace1 AnnexSpecLangConstructs MAsteriskBrace2 
			| MAsteriskBrace1 AnnexSpecLangConstructs MAsteriskBrace2 InModes 
			| NoneStatement 
			| NoneStatement InModes 
syntax AnnexSpecLangConstructs ::= NODEF 
syntax AnnexLibrary ::= Mannex Id AnnexLibraryAssocDef MSemicolon 
syntax AnnexLibraryAssocDef ::= MAsteriskBrace1 AnnexSpecReusableConstructs MAsteriskBrace2 
			| MAsteriskBrace1 AnnexSpecReusableConstructs MAsteriskBrace2 InModes 
			| NoneStatement 
			| NoneStatement InModes 
syntax AnnexSpecReusableConstructs ::= NODEF 
endmodule
