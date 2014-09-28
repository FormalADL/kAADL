module ENDTOENDFLOW-SYNTAX
// 10.3  
  syntax EndToEndFlowSpec ::= EndToEndFlowId  Mcolon   Mend   Mto   Mend   Mflow  StartSubCmpFlowOrEtefId ConnectionIdFlowPathList /* + */ EndToEndFlowSpecAssocDefault  MSemicolon 
    syntax EndToEndFlowId ::= Id
    syntax StartSubCmpFlowOrEtefId ::= SubCmpFlowOrEtefId
    syntax ConnectionIdFlowPathList ::=  MArrows  ConnectionId  MArrows  FlowPathSubCmpFlowOrEtefId
                | ConnectionIdFlowPathList ConnectionIdFlowPathList
      syntax FlowPathSubCmpFlowOrEtefId ::= NODEF
    syntax EndToEndFlowSpecAssocDefault ::=   MBraceLeft  PpeAssocList  MBraceRight  InModesAndTransitions
                |   MBraceLeft  PpeAssocList  MBraceRight 
                |  InModesAndTransitions
                |  NoneStatement

  syntax EndToEndSpecRefinement ::= EndToEndId  Mcolon   Mrefined   Mto   Mend   Mto   Mend   Mflow  EndToEndSpecRefinementDefault  MSemicolon 
    syntax EndToEndId ::=  Id
    syntax EndToEndSpecRefinementDefault ::=  MBraceLeft  PpeAssocList  MBraceRight  InModesAndTransitions
                |   MBraceLeft  PpeAssocList  MBraceRight 
                |  InModesAndTransitions
  syntax SubCmpFlowOrEtefId ::= SubCmpFlowId | EndToEndFlowId

endmodule

module ENDTOENDFLOW
  
 // imports ENDTOENDFLOW-SYNTAX

endmodule
