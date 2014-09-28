module FLOWSPECIFICATION-SYNTAX
// 10.1 check
  syntax FlowSpec ::= FlowSourceSpec | FlowSinkSpec | FlowPathSpec 
    syntax FlowSourceSpec ::=  FlowId  Mcolon   Mflow   Msource  OutFlowFetId FlowSourceSpecAssocDef  MSemicolon 
      syntax FlowId ::= Id
      syntax OutFlowFetId ::=  Id
      syntax FlowSourceSpecAssocDef ::=  MBraceLeft  PpeAssocList/*+*/  MBraceRight  InModes  MSemicolon 
                    |  MBraceLeft  PpeAssocList /*+*/ MBraceRight   MSemicolon 
                    | InModes  MSemicolon 

    syntax FlowSinkSpec ::= FlowId  Mcolon   Mflow   Msink  InFlowFetId FlowSinkSpecAssocDef  MSemicolon 
      syntax InFlowFetId ::= Id
      syntax FlowSinkSpecAssocDef ::= FlowSourceSpecAssocDef
    
    syntax FlowPathSpec ::= FlowId  Mcolon   Mflow   Mpath  InFlowFetId  MArrows  OutFlowFetId  FlowPathSpecAssocDef  MSemicolon 
      syntax FlowPathSpecAssocDef ::= FlowSourceSpecAssocDef

  syntax FlowSpecRefinement ::= FlowSourceSpecRefinement | FlowSinkSpecRefinement | FlowPathSpecRefinement
    syntax FlowSourceSpecRefinement ::= FlowId  Mcolon   Mrefined   Mto   Mflow   Msource  FlowSourceSpecRefinementAssocDef  MSemicolon 
      syntax FlowSourceSpecRefinementAssocDef ::=  MBraceLeft  PpeAssocList/*+*/  MBraceRight  InModesAndTransitions 
                  |   MBraceLeft  PpeAssocList  MBraceRight  
                  |   InModesAndTransitions
    syntax FlowSinkSpecRefinement ::=  FlowId  Mcolon   Mrefined   Mto   Mflow   Msink   FlowSinkSpecRefinementAssocDef  MSemicolon 
      syntax FlowSinkSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef

    syntax FlowPathSpecRefinement ::=   FlowId  Mcolon   Mrefined   Mto   Mflow   Mpath   FlowPathSpecRefinementAssocDef  MSemicolon 
      syntax FlowPathSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef
    
    syntax FlowFetIdentifer ::= FetId | FetGroupId
               |  FetGroupId  MPoint  FetId
               |  FetGroupId  MPoint  FetGroupId


endmodule

module  FLOWSPECIFICATION

 // imports FLOWSPECIFICATION-SYNTAX

endmodule
