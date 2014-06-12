module MODESANDMODETRANSITION-SYNTAX
// 12
  syntax ModesSubclause ::= "modes" "(" ModeList ModeTransitionList ")"
    syntax ModeTransitionList ::= NoneStatement
             |  ModeTransition
             |  ModeTransition ModeTransitionList
      syntax Mode ::=  ModeId ":" "initial" "mode" "{" ModePpeAssocList "}"";"
             |   ModeId ":"  "mode" "{" ModePpeAssocList "}"";"
             |   ModeId ":" "initial" "mode"";"
             |   ModeId ":" "mode" ";"
        syntax ModeId ::= NODEF
        syntax ModePpeAssocList ::= ModePpeAssoc | ModePpeAssoc ModePpeAssocList
          syntax ModePpeAssoc ::= NODEF

  syntax RequiresModesSubclause ::= "requirs" "modes" "(" ModeList")"
    syntax ModeList ::= NoneStatement
         |  Mode
         |  Mode ModeList
  
  syntax ModeTransition ::= ModeTransitionIdnetifier ":" SourceModeId "-[" ModeTransitionTrigger ModeTransitionTriggerList "]->" DestinationModeId ModeTransitionPpeAssocList ";"
        | ModeTransitionIdnetifier ":" SourceModeId "-[" ModeTransitionTrigger ModeTransitionTriggerList "]->" DestinationModeId ";"
        | SourceModeId "-[" ModeTransitionTrigger ModeTransitionTriggerList "]->" DestinationModeId ModeTransitionPpeAssocList ";"
        | SourceModeId "-[" ModeTransitionTrigger ModeTransitionTriggerList "]->" DestinationModeId ";"  
    syntax ModeTransitionTriggerList ::= ","ModeTransitionTrigger
				      | "," ModeTransitionTrigger ModeTransitionTriggerList
	syntax SourceModeId ::= Id
    syntax ModeTransitionIdnetifier ::= NODEF
    syntax ModeTransitionTrigger ::= UniPortId 
            |  "self" "." EventSourceId
            |  "processor" "." PortId
      syntax UniPortId ::= PortId | SubCmpFetGroupOrSubPgmCallId "." PortId
        syntax SubCmpFetGroupOrSubPgmCallId ::= NODEF
      syntax EventSourceId ::= NODEF
    syntax DestinationModeId ::= NODEF
    syntax ModeTransitionPpeAssocList ::=  ModeTransitionPpeAssoc |  ModeTransitionPpeAssoc  ModeTransitionPpeAssocList
      syntax ModeTransitionPpeAssoc ::= NODEF

  syntax InModes ::= "in" "modes" "(" ModeIdList ")"
    syntax ModeIdList ::= ModeId | ModeId "," ModeIdList

  syntax CmpInModes ::= "in" "modes" "(" ModeNameList ")"
    syntax ModeNameList ::= ModeName | ModeName "," ModeNameList
      syntax ModeName ::= LocalModeId | LocalModeId "=>" SubCmpModeId
        syntax LocalModeId ::= NODEF
        syntax SubCmpModeId ::= NODEF
        
  syntax InModesAndTransitions ::= "in" "modes" "(" ModeOrTransitionList ")"
    syntax ModeOrTransitionList ::= ModeOrTransition | ModeOrTransition "," ModeOrTransitionList 
      syntax ModeOrTransition ::= NODEF
  

endmodule

module MODESANDMODETRANSITION

//  imports MODESANDMODETRANSITION-SYNTAX

endmodule