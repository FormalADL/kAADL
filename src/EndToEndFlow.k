module ENDTOENDFLOW-SYNTAX
// 10.3  
  syntax EndToEndFlowSpec ::= EndToEndFlowIdentifier ":" "end ""to ""end ""flow " StartSubcomponentFlowOrEtefIdentifier ConnectionIdentifierFlowPathList  EndToEndFlowSpecAssocDefault ";"
    syntax EndToEndFlowIdentifier ::= Id
    syntax StartSubcomponentFlowOrEtefIdentifier ::= SubcomponentFlowOrEtefIdentifier
    syntax ConnectionIdentifierFlowPathList ::= "->" ConnectionIdentifier "->" FlowPathSubcomponentFlowOrEtefIdentifier
                | ConnectionIdentifierFlowPathList ConnectionIdentifierFlowPathList
      syntax FlowPathSubcomponentFlowOrEtefIdentifier ::= NODEF
    syntax EndToEndFlowSpecAssocDefault ::=  "{" PropertyAssociationList "}" InModesAndTransitions
                |  "{" PropertyAssociationList "}"
                |  InModesAndTransitions
                |  NoneStatement

  syntax EndToEndSpecRefinement ::= EndToEndIdentifier ":" "refined ""to ""end ""to ""end ""flow " EndToEndSpecRefinementDefault ";"
    syntax EndToEndIdentifier ::=  Id
    syntax EndToEndSpecRefinementDefault ::= "{" PropertyAssociationList "}" InModesAndTransitions
                |  "{" PropertyAssociationList "}"
                |  InModesAndTransitions
  syntax SubcomponentFlowOrEtefIdentifier ::= SubcomponentFlowIdentifier | EndToEndFlowIdentifier

endmodule

module ENDTOENDFLOW
  
 // imports ENDTOENDFLOW-SYNTAX

endmodule