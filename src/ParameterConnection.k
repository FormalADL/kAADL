module PARAMETERCONNECTION-SYNTAX

  syntax ParameterConnection ::=  Mparameter  SourceParameterRef DirectionalConnectionSymbol DestinationParameterRef
    syntax SourceParameterRef ::= ParameterRef 
    syntax DirectionalConnectionSymbol ::= ParameterRef
    syntax DestinationParameterRef ::= ParameterRef

  syntax ParameterConnectionRefinement ::=  Mparamenter 
  syntax ParameterRef ::= CmpTypeParameterId 
            |  CmpTypeParameterId  MPoint  DataSubCmpId
            |  SubPgmCallId  MPoint  ParameterId
            |  CmpTypePortId
            |  CmpTypePortId  MPoint  DataSubCmpId
            |  DataSubCmpId
            |  RequiresDataAccessId
            |  CmpTypeFetGroupId  MPoint  ElementDataAccessId
            |  CmpTypeFetFetGroupId  MPoint  ElementPortOrParameterId
    
    syntax CmpTypeParameterId ::= Id
    syntax RequiresDataAccessId ::= Id
    syntax CmpTypeFetFetGroupId ::= Id
    syntax ElementPortOrParameterId ::= Id
    
endmodule

module PARAMETERCONNECTION
  
//  imports PARAMETERCONNECTION-SYNTAX

endmodule
