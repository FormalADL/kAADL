module ANNEXSUBCLAUSELIBRARY-SYNTAX

  syntax AnnexSubclause ::= "annex" AnnexId AnnexSubclauseAssocDef ";"
  syntax AnnexId ::= Id
  syntax AnnexSubclauseAssocDef ::= "{**" AnnexSpecLangConstructs "**}"
                                  | "{**" AnnexSpecLangConstructs "**}" InModes
                                  | NoneStatement
                                  | NoneStatement InModes
                  
  syntax AnnexSpecLangConstructs ::= NODEF      //here is the define of Annex language
  
  syntax AnnexLibrary ::= "annex" AnnexId AnnexLibraryAssocDef ";"
  syntax AnnexLibraryAssocDef ::= "{**" AnnexSpecReusableConstructs "**}"
                                | "{**" AnnexSpecReusableConstructs "**}" InModes
                                | NoneStatement 
								| NoneStatement InModes
								
  syntax AnnexSpecReusableConstructs ::= NODEF
endmodule
