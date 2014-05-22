module FLOWSPECIFICATION-SYNTAX
// 10.1 check
  syntax FlowSpec ::= FlowSourceSpec | FlowSinkSpec | FlowPathSpec 
    syntax FlowSourceSpec ::=  FlowIdentifier ":" "flow " "source " OutFlowFeatureIdentifier FlowSourceSpecAssocDefination ";"
      syntax FlowIdentifier ::= Id
      syntax OutFlowFeatureIdentifier ::=  Id
      syntax FlowSourceSpecAssocDefination ::= "{" PropertyAssociationList "}" InModes ";"
                    | "{"PropertyAssociationList "}" ";"
                    | InModes ";"

    syntax FlowSinkSpec ::= FlowIdentifier ":" "flow ""sink " InFlowFeatureIdentifier FlowSinkSpecAssocDefination ";"
      syntax InFlowFeatureIdentifier ::= Id
      syntax FlowSinkSpecAssocDefination ::= FlowSourceSpecAssocDefination
    
    syntax FlowPathSpec ::= FlowIdentifier ":" "flow " "path " InFlowFeatureIdentifier "->" OutFlowFeatureIdentifier  FlowPathSpecAssocDefination ";"
      syntax FlowPathSpecAssocDefination ::= FlowSourceSpecAssocDefination

  syntax FlowSpecRefinement ::= FlowSourceSpecRefinement | FlowSinkSpecRefinement | FlowPathSpecRefinement
    syntax FlowSourceSpecRefinement ::= FlowIdentifier ":" "refined ""to ""flow ""source " FlowSourceSpecRefinementAssocDefination ";"
      syntax FlowSourceSpecRefinementAssocDefination ::= "{" PropertyAssociationList "}" InModesAndTransitions 
                  |  "{" PropertyAssociationList "}" 
                  |   InModesAndTransitions
    syntax FlowSinkSpecRefinement ::=  FlowIdentifier ":" "refined ""to ""flow ""sink "  FlowSinkSpecRefinementAssocDefination ";"
      syntax FlowSinkSpecRefinementAssocDefination ::= FlowSourceSpecRefinementAssocDefination

    syntax FlowPathSpecRefinement ::=   FlowIdentifier ":" "refined ""to ""flow ""path "  FlowPathSpecRefinementAssocDefination ";"
      syntax FlowPathSpecRefinementAssocDefination ::= FlowSourceSpecRefinementAssocDefination
    
    syntax FlowFeatureIdentifer ::= FeatureIdentifier | FeatureGroupIdentifier
               |  FeatureGroupIdentifier "." FeatureIdentifier
               |  FeatureGroupIdentifier "." FeatureGroupIdentifier


endmodule

module  FLOWSPECIFICATION

 // imports FLOWSPECIFICATION-SYNTAX

endmodule