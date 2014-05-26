module MODESANDMODETRANSITION-SYNTAX

  syntax ModesSubclause ::= "modes" "(" ModeTransitionList ")"
    syntax ModeTransitionList ::= NoneStatement
             |  Mode
             |  ModeTransition
             |  ModeTransitionList ModeTransitionList
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
  
  syntax ModeTransition ::= ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeId ModeTransitionPpeAssocList ";"
        | ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeId ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeId ModeTransitionPpeAssocList ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeId ";"  
    syntax ModeTransitionIdnetifier ::= NODEF
    syntax SourceModeTrigger ::= UniPortId 
            |  "self" "." EventSourceId
            |  "processor" "." PortId
      syntax UniPortId ::= PortId | SubCmpFetGroupOrSubprogramCallId "." PortId
        syntax SubCmpFetGroupOrSubprogramCallId ::= NODEF
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