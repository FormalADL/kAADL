module FLOWIMPLEMENTATION-SYNTAX 
 
  syntax FlowImpl ::= FlowSourceSinkPathImplementAssocDef PpeAssocInModes  MSemicolon 
                     |FlowSourceSinkPathImplementAssocDef MSemicolon 
  syntax FlowSourceSinkPathImplementAssocDef ::= FlowSourceImpl | FlowSinkImpl | FlowPathImpl
  syntax FlowSourceImpl ::= FlowId  Mcolon   Mflow   Msource  SubcompentConnectionAssocDef /* * */ OutFlowFetId
                         |  FlowId  Mcolon   Mflow   Msource  /* * */ OutFlowFetId
  syntax SubcompentConnectionAssocDef ::= SubcompenentFlowId  MArrows  ConnectionId  MArrows 
                                       |  SubcompentConnectionAssocDef SubcompentConnectionAssocDef
  syntax SubcompenentFlowId ::= Id
  syntax FlowSinkImpl ::= FlowId  Mcolon   Mflow   Msink  InFlowFetId ConnectionSubcompenentFlowAssocDef /* * */
                      | FlowId  Mcolon   Mflow   Msink  InFlowFetId
  syntax ConnectionSubcompenentFlowAssocDef ::= NoneStatement 
                      |   MArrows  ConnectionId MArrows SubcompenentFlowId
                      | ConnectionSubcompenentFlowAssocDef  ConnectionSubcompenentFlowAssocDef

  syntax FlowPathImpl ::= FlowId  Mcolon   Mflow   Mpath  InFlowFetId FlowPathImplDefault  MArrows  OutFlowFetId
			| FlowId  Mcolon   Mflow   Mpath  InFlowFetId   MArrows  OutFlowFetId

  syntax FlowPathImplDefault ::= ConnectIdSubcompenentFlowIdnetifierList /* + */  MArrows  ConnectionId

  syntax ConnectIdSubcompenentFlowIdnetifierList ::=  MArrows  ConnectionId  MArrows  SubCmpFlowId

                        |  ConnectIdSubcompenentFlowIdnetifierList ConnectIdSubcompenentFlowIdnetifierList

  syntax SubCmpFlowId ::= DataCompenentRef | SubCmpId | SubCmpId  MPoint  FlowSpecId
  syntax FlowSpecId ::= Id
  syntax DataCompenentRef ::= DataSubCmpId | RequiresDataAccessId | ProvidesDataAccessId

  syntax PpeAssocInModes ::=  MBraceLeft PpeAssocList MBraceRight  InModesAndTransitions
               |   MBraceLeft PpeAssocList MBraceRight 
               |  InModesAndTransitions
	       |  NoneStatement

endmodule

module FLOWIMPLEMENTATION

//  imports FLOWIMPLEMENTATION-SYNTAX 

endmodule

