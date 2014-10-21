module FLOWIMPLEMENTATION-SYNTAX 

syntax FlowImpl ::= FlowSourceSinkPathImplementAssocDef PpeAssocInModes MSemicolon |FlowSourceSinkPathImplementAssocDef MSemicolon 
syntax FlowSourceSinkPathImplementAssocDef ::= FlowSourceImpl 
			| FlowSinkImpl 
			| FlowPathImpl 
syntax FlowSourceImpl ::= Id Mcolon Mflow Msource SubcompentConnectionAssocDef Id 
			| Id Mcolon Mflow Msource Id 
syntax SubcompentConnectionAssocDef ::= Id MArrows Id MArrows 
			| SubcompentConnectionAssocDef SubcompentConnectionAssocDef 
syntax FlowSinkImpl ::= Id Mcolon Mflow Msink Id ConnectionSubcompenentFlowAssocDef 
			| Id Mcolon Mflow Msink Id 
syntax ConnectionSubcompenentFlowAssocDef ::= NoneStatement 
			| MArrows Id MArrows Id 
			| ConnectionSubcompenentFlowAssocDef ConnectionSubcompenentFlowAssocDef 
syntax FlowPathImpl ::= Id Mcolon Mflow Mpath Id FlowPathImplDefault MArrows Id 
			| Id Mcolon Mflow Mpath Id MArrows Id 
syntax FlowPathImplDefault ::= ConnectIdSubcompenentFlowIdnetifierList MArrows Id 
syntax ConnectIdSubcompenentFlowIdnetifierList ::= MArrows Id MArrows SubCmpFlowId 
			| ConnectIdSubcompenentFlowIdnetifierList ConnectIdSubcompenentFlowIdnetifierList 
syntax SubCmpFlowId ::= Id 
			| Id MPoint Id 
syntax PpeAssocInModes ::= MBraceLeft PpeAssocList MBraceRight InModesAndTransitions 
			| MBraceLeft PpeAssocList MBraceRight 
			| InModesAndTransitions 
endmodule
