module PARAMETERCONNECTION-SYNTAX
// 9.3  check
  syntax ParameterConnection ::= "parameter" SourceParameterRef DirectionalConnectionSymbol DestinationParameterRef
    syntax SourceParameterRef ::= ParameterRef // need rules
    syntax DirectionalConnectionSymbol ::= ParameterRef
    syntax DestinationParameterRef ::= ParameterRef

  syntax ParameterConnectionRefinement ::= "paramenter"
  syntax ParameterRef ::= CmpTypeParameterIdentifier 
            |  CmpTypeParameterIdentifier "." DataSubCmpIdentifier
            |  SubprogramCallIdentifier "." ParameterIdentifier
            |  CmpTypePortIdentifier
            |  CmpTypePortIdentifier "." DataSubCmpIdentifier
            |  DataSubCmpIdentifier
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