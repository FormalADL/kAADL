module PARAMETERCONNECTION-SYNTAX
// 9.3  check
  syntax ParameterConnection ::= "parameter" SourceParameterReference DirectionalConnectionSymbol DestinationParameterReference
    syntax SourceParameterReference ::= ParameterReference // need rules
    syntax DirectionalConnectionSymbol ::= ParameterReference
    syntax DestinationParameterReference ::= ParameterReference

  syntax ParameterConnectionRefinement ::= "paramenter"
  syntax ParameterReference ::= CmpTypeParameterIdentifier 
            |  CmpTypeParameterIdentifier "." DataSubcomponentIdentifier
            |  SubprogramCallIdentifier "." ParameterIdentifier
            |  CmpTypePortIdentifier
            |  CmpTypePortIdentifier "." DataSubcomponentIdentifier
            |  DataSubcomponentIdentifier
            |  RequiresDataAccessIdentifier
            |  CmpTypeFetGroupIdentifier "." ElementDataAccessIdentifier
            |  CmpTypeFetFetGroupIdentifier "." ElementPortOrParameterIdentifier
    
    syntax CmpTypeParameterIdentifier ::= Id
    syntax RequiresDataAccessIdentifier ::= Id
    syntax CmpTypeFetFetGroupIdentifier ::= Id
    syntax ElementPortOrParameterIdentifier ::= Id
    
endmodule

module PARAMETERCONNECTION
  
//  imports PARAMETERCONNECTION-SYNTAX

endmodule