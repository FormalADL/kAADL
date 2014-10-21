module FLOWSPECIFICATION-SYNTAX

syntax FlowSpec ::= FlowSourceSpec 
			| FlowSinkSpec 
			| FlowPathSpec 
syntax FlowSourceSpec ::= Id Mcolon Mflow Msource Id FlowSourceSpecAssocDef MSemicolon 
			| Id Mcolon Mflow Msource Id MSemicolon 
syntax FlowSourceSpecAssocDef ::= MBraceLeft PpeAssocList MBraceRight InModes MSemicolon 
			| MBraceLeft PpeAssocList MBraceRight MSemicolon 
			| InModes MSemicolon 
syntax FlowSinkSpec ::= Id Mcolon Mflow Msink Id FlowSinkSpecAssocDef MSemicolon 
			| Id Mcolon Mflow Msink Id MSemicolon 
syntax FlowSinkSpecAssocDef ::= FlowSourceSpecAssocDef 
syntax FlowPathSpec ::= Id Mcolon Mflow Mpath Id MArrows Id FlowPathSpecAssocDef MSemicolon 
			| Id Mcolon Mflow Mpath Id MArrows Id MSemicolon 
syntax FlowPathSpecAssocDef ::= FlowSourceSpecAssocDef 
syntax FlowSpecRefinement ::= FlowSourceSpecRefinement 
			| FlowSinkSpecRefinement 
			| FlowPathSpecRefinement 
syntax FlowSourceSpecRefinement ::= Id Mcolon Mrefined Mto Mflow Msource FlowSourceSpecRefinementAssocDef MSemicolon 
syntax FlowSourceSpecRefinementAssocDef ::= MBraceLeft PpeAssocList MBraceRight InModesAndTransitions 
			| MBraceLeft PpeAssocList MBraceRight 
			| InModesAndTransitions 
syntax FlowSinkSpecRefinement ::= Id Mcolon Mrefined Mto Mflow Msink FlowSinkSpecRefinementAssocDef MSemicolon 
syntax FlowSinkSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef 
syntax FlowPathSpecRefinement ::= Id Mcolon Mrefined Mto Mflow Mpath FlowPathSpecRefinementAssocDef MSemicolon 
syntax FlowPathSpecRefinementAssocDef ::= FlowSourceSpecRefinementAssocDef 
syntax FlowFetIdentifer ::= Id 
			| Id MPoint Id 
endmodule
