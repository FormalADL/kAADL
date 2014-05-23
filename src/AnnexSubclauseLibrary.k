module ANNEXSUBCLAUSELIBRARY-SYNTAX
// 4.8 check

  syntax AnnexSubclause ::= NoneStatement
  syntax AnnexSubclause ::= AnnexSubclause AnnexSubclause
  syntax AnnexSubclause ::= "annex" AnnexIdentifier AnnexSubclauseAssocDef ";"
  syntax AnnexIdentifier ::= Id
  syntax AnnexSubclauseAssocDef ::= "{**" AnnexSpecificLanguageConstructs "**}" // **} i do not know
                  |  NoneStatement
//                  |  "{**" AnnexSpecificLanguageConstructs "**}" InModes
//                    |  InModes
  syntax AnnexSpecificLanguageConstructs ::= NODEF

  
  syntax AnnexLibrary ::= "annex" AnnexIdentifier AnnexLibraryAssocDef ";"
  syntax AnnexLibraryAssocDef ::= "{**" AnnexSpecificReusableConstructs "**}"
                | NoneStatement
//                | "{**" AnnexSpecificReusableConstructs "**}" InModes
//                | InModes
  syntax AnnexSpecificReusableConstructs ::= NODEF
endmodule
