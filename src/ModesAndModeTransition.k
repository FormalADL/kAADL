module MODESANDMODETRANSITION-SYNTAX

syntax ModesSubclause ::=  Mmodes   MBracketLeft  MBracketRight 
			|  Mmodes   MBracketLeft  ModeTransitionList  MBracketRight 

syntax ModeTransitionList ::=   Mode
			     |  ModeTransition
			     |  ModeTransition ModeTransitionList
			     |	Mode ModeTransitionList

syntax RequiresModesSubclause ::=  Mrequirs   Mmodes   MBracketLeft  MBracketRight 
				|  Mrequirs   Mmodes   MBracketLeft  ModeList MBracketRight 
syntax ModeList ::=  Mode |  Mode ModeList
syntax Mode ::=  ModeId  Mcolon   Minitial   Mmode   MBraceLeft  ModePpeAssocList  MBraceRight  MSemicolon 
             |   ModeId  Mcolon    Mmode   MBraceLeft  ModePpeAssocList  MBraceRight  MSemicolon 
             |   ModeId  Mcolon   Minitial   Mmode  MSemicolon 
             |   ModeId  Mcolon   Mmode   MSemicolon 
syntax ModePpeAssocList ::= ModePpeAssoc | ModePpeAssoc ModePpeAssocList

syntax ModeTransition ::= ModeTransitionId  Mcolon  SourceModeId  MSpecalArrows1   ModeTransitionTriggerList  MSpecalArrows2  DestinationModeId ModeTransitionPpeAssocList  MSemicolon 
			| ModeTransitionId  Mcolon  SourceModeId  MSpecalArrows1   ModeTransitionTriggerList  MSpecalArrows2  DestinationModeId  MSemicolon 
			| SourceModeId  MSpecalArrows1   ModeTransitionTriggerList  MSpecalArrows2  DestinationModeId ModeTransitionPpeAssocList  MSemicolon 
			| SourceModeId  MSpecalArrows1   ModeTransitionTriggerList  MSpecalArrows2  DestinationModeId  MSemicolon   
syntax ModeTransitionPpeAssocList ::=  ModeTransitionPpeAssoc |  ModeTransitionPpeAssoc  ModeTransitionPpeAssocList

syntax ModeTransitionTriggerList ::= ModeTransitionTrigger
				  |  ModeTransitionTrigger  MComma  ModeTransitionTriggerList

syntax ModeTransitionTrigger ::= UniPortId 
			      |   Mself   MPoint  EventSourceId
			      |   Mprocessor   MPoint  PortId
syntax UniPortId ::= PortId | SubCmpFetGroupOrSubPgmCallId  MPoint  PortId

syntax InModes ::=  Min   Mmodes   MBracketLeft  ModeIdList  MBracketRight 
syntax ModeIdList ::= ModeId | ModeId  MComma  ModeIdList

syntax CmpInModes ::=  Min   Mmodes   MBracketLeft  ModeNameList  MBracketRight 
syntax ModeNameList ::= ModeName | ModeName  MComma  ModeNameList

syntax ModeName ::= LocalModeId | LocalModeId  MRoughArrow  SubCmpModeId

syntax InModesAndTransitions ::=  Min   Mmodes   MBracketLeft  ModeOrTransitionList  MBracketRight 
syntax ModeOrTransitionList ::= ModeOrTransition | ModeOrTransition  MComma  ModeOrTransitionList 

syntax ModeOrTransition ::= ModeId | ModeTransitionId
     
syntax ModeId ::= Id
syntax ModePpeAssoc ::= NODEF
syntax SourceModeId ::= Id
syntax ModeTransitionId ::= Id
syntax SubCmpFetGroupOrSubPgmCallId ::= Id
syntax EventSourceId ::= Id
syntax DestinationModeId ::= Id
syntax ModeTransitionPpeAssoc ::= NODEF
syntax LocalModeId ::= Id
syntax SubCmpModeId ::= Id

endmodule

module MODESANDMODETRANSITION

//  imports MODESANDMODETRANSITION-SYNTAX

endmodule
