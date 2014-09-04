module PARAMETERCONNECTION-SYNTAX

  syntax ParameterConnection ::= "parameter" SourceParameterRef DirectionalConnectionSymbol DestinationParameterRef
    syntax SourceParameterRef ::= ParameterRef 
    syntax DirectionalConnectionSymbol ::= ParameterRef
    syntax DestinationParameterRef ::= ParameterRef

  syntax ParameterConnectionRefinement ::= "paramenter"
  syntax ParameterRef ::= CmpTypeParameterId 
            |  CmpTypeParameterId "." DataSubCmpId
            |  SubPgmCallId "." ParameterId
            |  CmpTypePortId
            |  CmpTypePortId "." DataSubCmpId
            |  DataSubCmpId
            |  RequiresDataAccessId
            |  CmpTypeFetGroupId "." ElementDataAccessId
            |  CmpTypeFetFetGroupId "." ElementPortOrParameterId
    
    syntax CmpTypeParameterId ::= Id
    syntax RequiresDataAccessId ::= Id
    syntax CmpTypeFetFetGroupId ::= Id
    syntax ElementPortOrParameterId ::= Id
    
endmodule

module PARAMETERCONNECTION
  
//  imports PARAMETERCONNECTION-SYNTAX

endmodule