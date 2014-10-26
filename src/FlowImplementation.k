module FLOWIMPLEMENTATION-SYNTAX 

syntax FlowImpl ::= FlowSourceSinkPathImplementAssocDef PpeAssocInModes MSemicolon |FlowSourceSinkPathImplementAssocDef MSemicolon 
syntax FlowSourceSinkPathImplementAssocDef ::= FlowSourceImpl 
			| FlowSinkImpl 
			| FlowPathImpl 
syntax FlowSourceImpl ::= Id Mcolon Mflow Msource SubcompentConnectionAssocDef Id 
			| Id Mcolon Mflow Msource Id 
syntax SubcompentConnectionAssocDef ::= Id MPoint Id MArrows Id MArrows 
			| Id MPoint Id MArrows Id MArrows SubcompentConnectionAssocDef 
syntax FlowSinkImpl ::= Id Mcolon Mflow Msink Id 
			| Id Mcolon Mflow Msink Id ConnectionSubcompenentFlowAssocDef 
syntax ConnectionSubcompenentFlowAssocDef ::=  MArrows Id MArrows Id MPoint Id
			| MArrows Id MArrows Id MPoint Id  ConnectionSubcompenentFlowAssocDef 
syntax FlowPathImpl ::= Id Mcolon Mflow Mpath Id FlowPathImplDefault MArrows Id MPoint Id 
			| Id Mcolon Mflow Mpath Id MArrows Id MPoint Id 
syntax FlowPathImplDefault ::= ConnectIdSubcompenentFlowIdnetifierList MArrows Id MPoint Id 
syntax ConnectIdSubcompenentFlowIdnetifierList ::= MArrows Id MArrows SubCmpFlowId 
			| MArrows Id MArrows SubCmpFlowId  ConnectIdSubcompenentFlowIdnetifierList 
syntax SubCmpFlowId ::= Id 
			| Id MPoint Id 
syntax PpeAssocInModes ::= MBraceLeft PpeAssocList MBraceRight InModesAndTransitions 
			| MBraceLeft PpeAssocList MBraceRight 
			| InModesAndTransitions 
endmodule
