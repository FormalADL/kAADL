module FLOWIMPLEMENTATION-SYNTAX 
 
  syntax FlowImpl ::= FlowSourceSinkPathImplementAssocDef PpeAssocInModes  MSemicolon 
  syntax FlowSourceSinkPathImplementAssocDef ::= FlowSourceImpl | FlowSinkImpl | FlowPathImpl
  syntax FlowSourceImpl ::= FlowId  Mcolon   Mflow   Msource  SubcompentConnectionAssocDef OutFlowFetId
  syntax SubcompentConnectionAssocDef ::= NoneStatement
                      |  SubcompenentFlowId  MArrows  ConnectionId  MArrows 
                      |  SubcompentConnectionAssocDef SubcompentConnectionAssocDef
  syntax SubcompenentFlowId ::= Id
  syntax FlowSinkImpl ::= FlowId  Mcolon   Mflow   Msink  InFlowFetId ConnectionSubcompenentFlowAssocDef 
  syntax ConnectionSubcompenentFlowAssocDef ::= NoneStatement 
                      |   MArrows  ConnectionId MArrows SubcompenentFlowId
                      | ConnectionSubcompenentFlowAssocDef  ConnectionSubcompenentFlowAssocDef
  syntax FlowPathImpl ::= FlowId  Mcolon   Mflow   Mpath  InFlowFetId FlowPathImplDefault  MArrows  OutFlowFetId
  syntax FlowPathImplDefault ::= ConnectIdSubcompenentFlowIdnetifierList  MArrows  ConnectionId
  syntax ConnectIdSubcompenentFlowIdnetifierList ::=  MArrows  ConnectionId  MArrows  SubCmpFlowId
                        |  ConnectIdSubcompenentFlowIdnetifierList ConnectIdSubcompenentFlowIdnetifierList
  syntax ConnectionId ::= Id
  syntax SubCmpFlowId ::= DataCompenentRef | SubCmpId | SubCmpId  MPoint  FlowSpecId
  syntax FlowSpecId ::= Id
  syntax DataCompenentRef ::= DataSubCmpId | RequiresDataAccessId | ProvidesDataAccessId

  syntax PpeAssocInModes ::=  MBraceLeft PpeAssocList MBraceRight  InModesAndTransitions
               |   MBraceLeft PpeAssocList MBraceRight 
               |  InModesAndTransitions

endmodule

module FLOWIMPLEMENTATION

//  imports FLOWIMPLEMENTATION-SYNTAX 

endmodule
