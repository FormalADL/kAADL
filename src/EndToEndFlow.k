module ENDTOENDFLOW-SYNTAX
// 10.3  
  syntax EndToEndFlowSpec ::= EndToEndFlowId ":" "end" "to" "end" "flow" StartSubCmpFlowOrEtefId ConnectionIdFlowPathList /* + */ EndToEndFlowSpecAssocDefault ";"
    syntax EndToEndFlowId ::= Id
    syntax StartSubCmpFlowOrEtefId ::= SubCmpFlowOrEtefId
    syntax ConnectionIdFlowPathList ::= "->" ConnectionId "->" FlowPathSubCmpFlowOrEtefId
                | ConnectionIdFlowPathList ConnectionIdFlowPathList
      syntax FlowPathSubCmpFlowOrEtefId ::= NODEF
    syntax EndToEndFlowSpecAssocDefault ::=  "{" PpeAssocList "}" InModesAndTransitions
                |  "{" PpeAssocList "}"
                |  InModesAndTransitions
                |  NoneStatement

  syntax EndToEndSpecRefinement ::= EndToEndId ":" "refined" "to" "end" "to" "end" "flow" EndToEndSpecRefinementDefault ";"
    syntax EndToEndId ::=  Id
    syntax EndToEndSpecRefinementDefault ::= "{" PpeAssocList "}" InModesAndTransitions
                |  "{" PpeAssocList "}"
                |  InModesAndTransitions
  syntax SubCmpFlowOrEtefId ::= SubCmpFlowId | EndToEndFlowId

endmodule

module ENDTOENDFLOW
  
 // imports ENDTOENDFLOW-SYNTAX

endmodule