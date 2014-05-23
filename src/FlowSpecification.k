module FLOWSPECIFICATION-SYNTAX
// 10.1 check
  syntax FlowSpec ::= FlowSourceSpec | FlowSinkSpec | FlowPathSpec 
    syntax FlowSourceSpec ::=  FlowIdentifier ":" "flow " "source " OutFlowFetIdentifier FlowSourceSpecAssocDef ";"
      syntax FlowIdentifier ::= Id
      syntax OutFlowFetIdentifier ::=  Id
      syntax FlowSourceSpecAssocDef ::= "{" PpeAssocList "}" InModes ";"
                    | "{"PpeAssocList "}" ";"
                    | InModes ";"

    syntax FlowSinkSpec ::= FlowIdentifier ":" "flow ""sink " InFlowFetIdentifier FlowSinkSpecAssocDef ";"
      syntax InFlowFetIdentifier ::= Id
      syntax FlowSinkSpecAssocDef ::= FlowSourceSpecAssocDef
    
    syntax FlowPathSpec ::= FlowIdentifier ":" "flow " "path " InFlowFetIdentifier "->" OutFlowFetIdentifier  FlowPathSpecAssocDef ";"
      syntax FlowPathSpecAssocDef ::= FlowSourceSpecAssocDef

  syntax FlowSpecRefinement ::= FlowSourceSpecRefinement | FlowSinkSpecRefinement | FlowPathSpecRefinement
    syntax FlowSourceSpecRefinement ::= FlowIdentifier ":" "refined ""to ""flow ""source " FlowSourceSpecRefinementAssocDef ";"
      syntax FlowSourceSpecRefinementAssocDef ::= "{" PpeAssocList "}" InModesAndTransitions 
                  |  "{" PpeAssocList "}" 
                  |   InModesAndTransitions
    syntax FlowSinkSpecRefinement ::=  FlowIdentifier ":" "refined ""to ""flow ""sink "  FlowSinkSpecRefinementAssocDef ";"
      syntax FlowSinkSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef

    syntax FlowPathSpecRefinement ::=   FlowIdentifier ":" "refined ""to ""flow ""path "  FlowPathSpecRefinementAssocDef ";"
      syntax FlowPathSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef
    
    syntax FlowFetIdentifer ::= FetIdentifier | FetGroupIdentifier
               |  FetGroupIdentifier "." FetIdentifier
               |  FetGroupIdentifier "." FetGroupIdentifier


endmodule

module  FLOWSPECIFICATION

 // imports FLOWSPECIFICATION-SYNTAX

endmodule