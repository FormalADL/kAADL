module ANNEXSUBCLAUSELIBRARY-SYNTAX

  syntax AnnexSubclause ::=  Mannex  AnnexId AnnexSubclauseAssocDef  MSemicolon 
  syntax AnnexId ::= Id
  syntax AnnexSubclauseAssocDef ::=  MAsteriskBrace1  AnnexSpecLangConstructs  MAsteriskBrace2 
                                  |  MAsteriskBrace1  AnnexSpecLangConstructs  MAsteriskBrace2  InModes
                                  | NoneStatement
                                  | NoneStatement InModes
                  
  syntax AnnexSpecLangConstructs ::= NODEF      //here is the define of Annex language
  
  syntax AnnexLibrary ::=  Mannex  AnnexId AnnexLibraryAssocDef  MSemicolon 
  syntax AnnexLibraryAssocDef ::=  MAsteriskBrace1  AnnexSpecReusableConstructs  MAsteriskBrace2 
                                |  MAsteriskBrace1  AnnexSpecReusableConstructs  MAsteriskBrace2  InModes
                                | NoneStatement 
								| NoneStatement InModes
								
  syntax AnnexSpecReusableConstructs ::= NODEF
endmodule

