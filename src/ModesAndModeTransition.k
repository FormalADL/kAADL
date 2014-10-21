module MODESANDMODETRANSITION-SYNTAX

syntax ModesSubclause ::= Mmodes MBracketLeft MBracketRight 
			| Mmodes MBracketLeft ModeTransitionList MBracketRight 
syntax ModeTransitionList ::= Mode 
			| ModeTransition 
			| ModeTransition ModeTransitionList 
			| Mode ModeTransitionList 
syntax RequiresModesSubclause ::= Mrequirs Mmodes MBracketLeft MBracketRight 
			| Mrequirs Mmodes MBracketLeft ModeList MBracketRight 
syntax ModeList ::= Mode 
			| Mode ModeList 
syntax Mode ::= Id Mcolon Minitial Mmode MBraceLeft ModePpeAssocList MBraceRight MSemicolon 
			| Id Mcolon Mmode MBraceLeft ModePpeAssocList MBraceRight MSemicolon 
			| Id Mcolon Minitial Mmode MSemicolon 
			| Id Mcolon Mmode MSemicolon 
syntax ModePpeAssocList ::= ModePpeAssoc 
			| ModePpeAssoc ModePpeAssocList 
syntax ModeTransition ::= Id Mcolon Id MSpecalArrows1 ModeTransitionTriggerList MSpecalArrows2 Id ModeTransitionPpeAssocList MSemicolon 
			| Id Mcolon Id MSpecalArrows1 ModeTransitionTriggerList MSpecalArrows2 Id MSemicolon 
			| Id MSpecalArrows1 ModeTransitionTriggerList MSpecalArrows2 Id ModeTransitionPpeAssocList MSemicolon 
			| Id MSpecalArrows1 ModeTransitionTriggerList MSpecalArrows2 Id MSemicolon 
syntax ModeTransitionPpeAssocList ::= ModeTransitionPpeAssoc 
			| ModeTransitionPpeAssoc ModeTransitionPpeAssocList 
syntax ModeTransitionTriggerList ::= ModeTransitionTrigger 
			| ModeTransitionTrigger MComma ModeTransitionTriggerList 
syntax ModeTransitionTrigger ::= UniPortId 
			| Mself MPoint Id 
			| Mprocessor MPoint Id 
syntax UniPortId ::= Id 
			| Id MPoint Id 
syntax InModes ::= Min Mmodes MBracketLeft ModeIdList MBracketRight 
syntax ModeIdList ::= Id 
			| Id MComma ModeIdList 
syntax CmpInModes ::= Min Mmodes MBracketLeft ModeNameList MBracketRight 
syntax ModeNameList ::= ModeName 
			| ModeName MComma ModeNameList 
syntax ModeName ::= Id 
			| Id MRoughArrow Id 
syntax InModesAndTransitions ::= Min Mmodes MBracketLeft ModeOrTransitionList MBracketRight 
syntax ModeOrTransitionList ::= Id 
			| Id MComma ModeOrTransitionList 
syntax ModePpeAssoc ::= NODEF 
syntax ModeTransitionPpeAssoc ::= NODEF 
endmodule
