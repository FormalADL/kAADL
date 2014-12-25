module MODESANDMODETRANSITION-SYNTAX

syntax ModesSubclause ::= Mmodes MBracketLeft MBracketRight 
			| Mmodes MBracketLeft ModeTransitionList MBracketRight 
syntax ModeTransitionList ::= Mode 
			| ModeTransition 
			| ModeTransition ModeTransitionList 
			| Mode ModeTransitionList 
syntax RequiresModesSubclause ::= Mrequires Mmodes MBracketLeft MBracketRight 
			| Mrequires Mmodes MBracketLeft ModeList MBracketRight 
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
			| AmbProcessorPointId
syntax UniPortId ::= AmbIdPointId


syntax InModes ::= Min Mmodes MBracketLeft  Id MComma ModeIdList MBracketRight
			| AmbInModesBracketLeftIdBracketRight

syntax ModeIdList ::= Id 
			| Id MComma ModeIdList
			
syntax CmpInModes ::=  InModes
			| Min Mmodes MBracketLeft Id MRoughArrow Id MBracketRight
			| Min Mmodes MBracketLeft Id MComma ModeNameList MBracketRight 
			| Min Mmodes MBracketLeft Id MRoughArrow Id MComma ModeNameList MBracketRight 

syntax ModeNameList ::= Id 
			| Id MRoughArrow Id
			| Id  MComma ModeNameList 
			| Id MRoughArrow Id MComma ModeNameList 

syntax InModesAndTransitions ::= AmbInModesBracketLeftIdBracketRight
			| Min Mmodes MBracketLeft Id MComma ModeOrTransitionList MBracketRight 

syntax ModeOrTransitionList ::= Id 
			| Id MComma ModeOrTransitionList 
syntax ModePpeAssoc ::= NODEF 
syntax ModeTransitionPpeAssoc ::= NODEF 
endmodule
