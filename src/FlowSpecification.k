module FLOWSPECIFICATION-SYNTAX
// 10.1 check
  syntax FlowSpec ::= FlowSourceSpec | FlowSinkSpec | FlowPathSpec 
    syntax FlowSourceSpec ::=  FlowId ":" "flow" "source" OutFlowFetId FlowSourceSpecAssocDef ";"
      syntax FlowId ::= Id
      syntax OutFlowFetId ::=  Id
      syntax FlowSourceSpecAssocDef ::= "{" PpeAssocList "}" InModes ";"
                    | "{" PpeAssocList "}" ";"
                    | InModes ";"

    syntax FlowSinkSpec ::= FlowId ":" "flow" "sink" InFlowFetId FlowSinkSpecAssocDef ";"
      syntax InFlowFetId ::= Id
      syntax FlowSinkSpecAssocDef ::= FlowSourceSpecAssocDef
    
    syntax FlowPathSpec ::= FlowId ":" "flow" "path" InFlowFetId "->" OutFlowFetId  FlowPathSpecAssocDef ";"
      syntax FlowPathSpecAssocDef ::= FlowSourceSpecAssocDef

  syntax FlowSpecRefinement ::= FlowSourceSpecRefinement | FlowSinkSpecRefinement | FlowPathSpecRefinement
    syntax FlowSourceSpecRefinement ::= FlowId ":" "refined" "to" "flow" "source" FlowSourceSpecRefinementAssocDef ";"
      syntax FlowSourceSpecRefinementAssocDef ::= "{" PpeAssocList "}" InModesAndTransitions 
                  |  "{" PpeAssocList "}" 
                  |   InModesAndTransitions
    syntax FlowSinkSpecRefinement ::=  FlowId ":" "refined" "to" "flow" "sink"  FlowSinkSpecRefinementAssocDef ";"
      syntax FlowSinkSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef

    syntax FlowPathSpecRefinement ::=   FlowId ":" "refined" "to" "flow" "path"  FlowPathSpecRefinementAssocDef ";"
      syntax FlowPathSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef
    
    syntax FlowFetIdentifer ::= FetId | FetGroupId
               |  FetGroupId "." FetId
               |  FetGroupId "." FetGroupId


endmodule

module  FLOWSPECIFICATION

 // imports FLOWSPECIFICATION-SYNTAX

endmodule