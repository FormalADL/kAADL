module FLOWIMPLEMENTATION-SYNTAX 

syntax FlowImpl ::= FlowSourceSinkPathImplementAssocDef PpeAssocInModes MSemicolon |FlowSourceSinkPathImplementAssocDef MSemicolon 
syntax FlowSourceSinkPathImplementAssocDef ::= FlowSourceImpl 
			| FlowSinkImpl 
			| FlowPathImpl 
syntax FlowSourceImpl ::= Id Mcolon Mflow Msource SubcompentConnectionAssocDef Id 
			| Id Mcolon Mflow Msource Id 
syntax SubcompentConnectionAssocDef ::= SubCmpFlowId MArrows Id MArrows 
			| SubCmpFlowId MArrows Id MArrows SubcompentConnectionAssocDef 
syntax FlowSinkImpl ::= Id Mcolon Mflow Msink Id 
			| Id Mcolon Mflow Msink Id ConnectionSubcompenentFlowAssocDef 

syntax ConnectionSubcompenentFlowAssocDef ::= AmbArrowsIdArrowsSubCmpFlowId 
			| MArrows Id MArrows SubCmpFlowId  ConnectionSubcompenentFlowAssocDef 

syntax FlowPathImpl ::= Id Mcolon Mflow Mpath Id FlowPathImplDefault MArrows SubCmpFlowId 
			| Id Mcolon Mflow Mpath Id MArrows SubCmpFlowId
syntax FlowPathImplDefault ::= ConnectIdSubcompenentFlowIdnetifierList MArrows SubCmpFlowId 


syntax ConnectIdSubcompenentFlowIdnetifierList ::= AmbArrowsIdArrowsSubCmpFlowId 
			| MArrows Id MArrows SubCmpFlowId  ConnectIdSubcompenentFlowIdnetifierList 


syntax SubCmpFlowId ::= AmbIdPointId


syntax PpeAssocInModes ::= AmbEndToEndFlowSpecAssocDefaultPpeInMode 


endmodule
