module MODESANDMODETRANSITION-SYNTAX

  syntax ModesSubclause ::= "modes" "(" ModeTransitionList ")"
    syntax ModeTransitionList ::= NoneStatement
             |  Mode
             |  ModeTransition
             |  ModeTransitionList ModeTransitionList
      syntax Mode ::=  ModeIdentifier ":" "initial" "mode" "{" ModePpeAssociationList "}"";"
             |   ModeIdentifier ":"  "mode" "{" ModePpeAssociationList "}"";"
             |   ModeIdentifier ":" "initial" "mode"";"
             |   ModeIdentifier ":" "mode" ";"
        syntax ModeIdentifier ::= NODEF
        syntax ModePpeAssociationList ::= ModePpeAssociation | ModePpeAssociation ModePpeAssociationList
          syntax ModePpeAssociation ::= NODEF

  syntax RequiresModesSubclause ::= "requirs""modes" "(" ModeList")"
    syntax ModeList ::= NoneStatement
         |  Mode
         |  Mode ModeList
  
  syntax ModeTransition ::= ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPpeAssociationList ";"
        | ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPpeAssociationList ";"
        | SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"  
    syntax ModeTransitionIdnetifier ::= NODEF
    syntax SourceModeTrigger ::= UniquePortIdentifier 
            |  "self""."EventSourceIdentifier
            |  "processor""."PortIdentifier
      syntax UniquePortIdentifier ::= PortIdentifier | SubcomponentFeatureGroupOrSubprogramCallIdentifier "." PortIdentifier
        syntax SubcomponentFeatureGroupOrSubprogramCallIdentifier ::= NODEF
      syntax EventSourceIdentifier ::= NODEF
    syntax DestinationModeIdentifier ::= NODEF
    syntax ModeTransitionPpeAssociationList ::=  ModeTransitionPpeAssociation |  ModeTransitionPpeAssociation  ModeTransitionPpeAssociationList
      syntax ModeTransitionPpeAssociation ::= NODEF

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

//  imports MODESANDMODETRANSITION-SYNTAX

endmodule