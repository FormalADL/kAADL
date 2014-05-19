module MODESANDMODETRANSITION-SYNTAX

  syntax ModesSubclause ::= "modes" "(" ModeTransitionList ")"
    syntax ModeTransitionList ::= NoneStatement
             |  Mode
             |  ModeTransition
             |  ModeTransitionList ModeTransitionList
      syntax Mode ::=  ModeIdentifier ":" "initial" "mode" "{" ModePropertyAssociationList "}"";"
             |   ModeIdentifier ":"  "mode" "{" ModePropertyAssociationList "}"";"
             |   ModeIdentifier ":" "initial" "mode"";"
             |   ModeIdentifier ":" "mode" ";"
        syntax ModeIdentifier ::= NODEF
        syntax ModePropertyAssociationList ::= ModePropertyAssociation | ModePropertyAssociation ModePropertyAssociationList
          syntax ModePropertyAssociation ::= NODEF

  syntax RequiresModesSubclause ::= "requirs""modes" "(" ModeList")"
    syntax ModeList ::= NoneStatement
         |  Mode
         |  Mode ModeList
  
  syntax ModeTransition ::= ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPropertyAssociationList ";"
        | ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPropertyAssociationList ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"  
    syntax ModeTransitionIdnetifier ::= NODEF
    syntax SourceModeTrigger ::= UniquePortIdentifier 
            |  "self""."EventSourceIdentifier
            |  "processor""."PortIdentifier
      syntax UniquePortIdentifier ::= PortIdentifier | SubcomponentFeatureGroupOrSubprogramCallIdentifier "." PortIdentifier
        syntax SubcomponentFeatureGroupOrSubprogramCallIdentifier ::= NODEF
      syntax EventSourceIdentifier ::= NODEF
    syntax DestinationModeIdentifier ::= NODEF
    syntax ModeTransitionPropertyAssociationList ::=  ModeTransitionPropertyAssociation |  ModeTransitionPropertyAssociation  ModeTransitionPropertyAssociationList
      syntax ModeTransitionPropertyAssociation ::= NODEF

  syntax InModes ::= "in" " modes ""(" ModeIdentifierList ")"
    syntax ModeIdentifierList ::= ModeIdentifier | ModeIdentifier "," ModeIdentifierList

  syntax ComponentInModes ::= "in ""modes " "("ModeNameList")"
    syntax ModeNameList ::= ModeName | ModeName "," ModeNameList
      syntax ModeName ::= LocalModeIdentifier | LocalModeIdentifier "=>" SubcomponentModeIdentifier
        syntax LocalModeIdentifier ::= NODEF
        syntax SubcomponentModeIdentifier ::= NODEF
        
  syntax InModesAndTransitions ::= "in ""modes ""(" ModeOrTransitionList")"
    syntax ModeOrTransitionList ::= ModeOrTransition | ModeOrTransition "," ModeOrTransitionList 
      syntax ModeOrTransition ::= NODEF
  

endmodule

module MODESANDMODETRANSITION

  imports MODESANDMODETRANSITION-SYNTAX

endmodule