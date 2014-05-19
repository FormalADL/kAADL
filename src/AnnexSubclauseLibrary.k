module ANNEXSUBCLAUSELIBRARY-SYNTAX
// 4.8 check
  syntax AnnexSubclause ::= "annex" AnnexIdentifier AnnexSubclauseAssocDefination ";"
  syntax AnnexIdentifier ::= Id
  syntax AnnexSubclauseAssocDefination ::= "{**" AnnexSpecificLanguageConstructs "**}" // **} i do not know
                  |  NoneStatement
//                  |  "{**" AnnexSpecificLanguageConstructs "**}" InModes
//                    |  InModes
  syntax AnnexSpecificLanguageConstructs ::= NODEF

  
  syntax AnnexLibrary ::= "annex" AnnexIdentifier AnnexLibraryAssocDefination ";"
  syntax AnnexLibraryAssocDefination ::= "{**" AnnexSpecificReusableConstructs "**}"
                | NoneStatement
//                | "{**" AnnexSpecificReusableConstructs "**}" InModes
//                | InModes
  syntax AnnexSpecificReusableConstructs ::= NODEF
endmodule
