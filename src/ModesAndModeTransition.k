module MODESANDMODETRANSITION-SYNTAX

syntax ModesSubclause ::= "modes" "("")"
			| "modes" "(" ModeTransitionList ")"

syntax ModeTransitionList ::=   Mode
			     |  ModeTransition
			     |  ModeTransition ModeTransitionList
			     |	Mode ModeTransitionList

syntax RequiresModesSubclause ::= "requirs" "modes" "("")"
				| "requirs" "modes" "(" ModeList")"
syntax ModeList ::=  Mode |  Mode ModeList
syntax Mode ::=  ModeId ":" "initial" "mode" "{" ModePpeAssocList "}"";"
             |   ModeId ":"  "mode" "{" ModePpeAssocList "}"";"
             |   ModeId ":" "initial" "mode"";"
             |   ModeId ":" "mode" ";"
syntax ModePpeAssocList ::= ModePpeAssoc | ModePpeAssoc ModePpeAssocList

syntax ModeTransition ::= ModeTransitionId ":" SourceModeId "-["  ModeTransitionTriggerList "]->" DestinationModeId ModeTransitionPpeAssocList ";"
			| ModeTransitionId ":" SourceModeId "-["  ModeTransitionTriggerList "]->" DestinationModeId ";"
			| SourceModeId "-["  ModeTransitionTriggerList "]->" DestinationModeId ModeTransitionPpeAssocList ";"
			| SourceModeId "-["  ModeTransitionTriggerList "]->" DestinationModeId ";"  
syntax ModeTransitionPpeAssocList ::=  ModeTransitionPpeAssoc |  ModeTransitionPpeAssoc  ModeTransitionPpeAssocList

syntax ModeTransitionTriggerList ::= ModeTransitionTrigger
				  |  ModeTransitionTrigger "," ModeTransitionTriggerList

syntax ModeTransitionTrigger ::= UniPortId 
			      |  "self" "." EventSourceId
			      |  "processor" "." PortId
syntax UniPortId ::= PortId | SubCmpFetGroupOrSubPgmCallId "." PortId

syntax InModes ::= "in" "modes" "(" ModeIdList ")"
syntax ModeIdList ::= ModeId | ModeId "," ModeIdList

syntax CmpInModes ::= "in" "modes" "(" ModeNameList ")"
syntax ModeNameList ::= ModeName | ModeName "," ModeNameList

syntax ModeName ::= LocalModeId | LocalModeId "=>" SubCmpModeId

syntax InModesAndTransitions ::= "in" "modes" "(" ModeOrTransitionList ")"
syntax ModeOrTransitionList ::= ModeOrTransition | ModeOrTransition "," ModeOrTransitionList 

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