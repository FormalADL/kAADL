module ENDTOENDFLOW-SYNTAX
// 10.3  
  syntax EndToEndFlowSpec ::= EndToEndFlowIdentifier ":" "end ""to ""end ""flow " StartSubcomponentFlowOrEtefIdentifier ConnectionIdentifierFlowPathList  EndToEndFlowSpecAssocDefault ";"
    syntax EndToEndFlowIdentifier ::= Id
    syntax StartSubcomponentFlowOrEtefIdentifier ::= SubcomponentFlowOrEtefIdentifier
    syntax ConnectionIdentifierFlowPathList ::= "->" ConnectionIdentifier "->" FlowPathSubcomponentFlowOrEtefIdentifier
                | ConnectionIdentifierFlowPathList ConnectionIdentifierFlowPathList
      syntax FlowPathSubcomponentFlowOrEtefIdentifier ::= NODEF
    syntax EndToEndFlowSpecAssocDefault ::=  "{" PpeAssocList "}" InModesAndTransitions
                |  "{" PpeAssocList "}"
                |  InModesAndTransitions
                |  NoneStatement

  syntax EndToEndSpecRefinement ::= EndToEndIdentifier ":" "refined ""to ""end ""to ""end ""flow " EndToEndSpecRefinementDefault ";"
    syntax EndToEndIdentifier ::=  Id
    syntax EndToEndSpecRefinementDefault ::= "{" PpeAssocList "}" InModesAndTransitions
                |  "{" PpeAssocList "}"
                |  InModesAndTransitions
  syntax SubcomponentFlowOrEtefIdentifier ::= SubcomponentFlowIdentifier | EndToEndFlowIdentifier

endmodule

module ENDTOENDFLOW
  
 // imports ENDTOENDFLOW-SYNTAX

endmodule