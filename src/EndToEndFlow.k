module ENDTOENDFLOW-SYNTAX
// 10.3  
  syntax EndToEndFlowSpec ::= EndToEndFlowIdentifier ":" "end ""to ""end ""flow " StartSubCmpFlowOrEtefIdentifier ConnectionIdentifierFlowPathList  EndToEndFlowSpecAssocDefault ";"
    syntax EndToEndFlowIdentifier ::= Id
    syntax StartSubCmpFlowOrEtefIdentifier ::= SubCmpFlowOrEtefIdentifier
    syntax ConnectionIdentifierFlowPathList ::= "->" ConnectionIdentifier "->" FlowPathSubCmpFlowOrEtefIdentifier
                | ConnectionIdentifierFlowPathList ConnectionIdentifierFlowPathList
      syntax FlowPathSubCmpFlowOrEtefIdentifier ::= NODEF
    syntax EndToEndFlowSpecAssocDefault ::=  "{" PpeAssocList "}" InModesAndTransitions
                |  "{" PpeAssocList "}"
                |  InModesAndTransitions
                |  NoneStatement

  syntax EndToEndSpecRefinement ::= EndToEndIdentifier ":" "refined ""to ""end ""to ""end ""flow " EndToEndSpecRefinementDefault ";"
    syntax EndToEndIdentifier ::=  Id
    syntax EndToEndSpecRefinementDefault ::= "{" PpeAssocList "}" InModesAndTransitions
                |  "{" PpeAssocList "}"
                |  InModesAndTransitions
  syntax SubCmpFlowOrEtefIdentifier ::= SubCmpFlowIdentifier | EndToEndFlowIdentifier

endmodule

module ENDTOENDFLOW
  
 // imports ENDTOENDFLOW-SYNTAX

endmodule