module MODESANDMODETRANSITION-SYNTAX

  syntax ModesSubclause ::= "modes" "(" ModeTransitionList ")"
    syntax ModeTransitionList ::= NoneStatement
             |  Mode
             |  ModeTransition
             |  ModeTransitionList ModeTransitionList
      syntax Mode ::=  ModeIdentifier ":" "initial" "mode" "{" ModePpeAssocList "}"";"
             |   ModeIdentifier ":"  "mode" "{" ModePpeAssocList "}"";"
             |   ModeIdentifier ":" "initial" "mode"";"
             |   ModeIdentifier ":" "mode" ";"
        syntax ModeIdentifier ::= NODEF
        syntax ModePpeAssocList ::= ModePpeAssoc | ModePpeAssoc ModePpeAssocList
          syntax ModePpeAssoc ::= NODEF

  syntax RequiresModesSubclause ::= "requirs" "modes" "(" ModeList")"
    syntax ModeList ::= NoneStatement
         |  Mode
         |  Mode ModeList
  
  syntax ModeTransition ::= ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPpeAssocList ";"
        | ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPpeAssocList ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"  
    syntax ModeTransitionIdnetifier ::= NODEF
    syntax SourceModeTrigger ::= UniquePortIdentifier 
            |  "self""."EventSourceIdentifier
            |  "processor""."PortIdentifier
      syntax UniquePortIdentifier ::= PortIdentifier | SubcomponentFetGroupOrSubprogramCallIdentifier "." PortIdentifier
        syntax SubcomponentFetGroupOrSubprogramCallIdentifier ::= NODEF
      syntax EventSourceIdentifier ::= NODEF
    syntax DestinationModeIdentifier ::= NODEF
    syntax ModeTransitionPpeAssocList ::=  ModeTransitionPpeAssoc |  ModeTransitionPpeAssoc  ModeTransitionPpeAssocList
      syntax ModeTransitionPpeAssoc ::= NODEF

  syntax InModes ::= "in" " modes ""(" ModeIdentifierList ")"
    syntax ModeIdentifierList ::= ModeIdentifier | ModeIdentifier "," ModeIdentifierList

  syntax CmpInModes ::= "in ""modes " "("ModeNameList")"
    syntax ModeNameList ::= ModeName | ModeName "," ModeNameList
      syntax ModeName ::= LocalModeIdentifier | LocalModeIdentifier "=>" SubcomponentModeIdentifier
        syntax LocalModeIdentifier ::= NODEF
        syntax SubcomponentModeIdentifier ::= NODEF
        
  syntax InModesAndTransitions ::= "in ""modes ""(" ModeOrTransitionList")"
    syntax ModeOrTransitionList ::= ModeOrTransition | ModeOrTransition "," ModeOrTransitionList 
      syntax ModeOrTransition ::= NODEF
  

endmodule

module MODESANDMODETRANSITION

//  imports MODESANDMODETRANSITION-SYNTAX

endmodule