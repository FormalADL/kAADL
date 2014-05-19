module PARAMETERCONNECTION-SYNTAX
// 9.3  check
  syntax ParameterConnection ::= "parameter" SourceParameterReference DirectionalConnectionSymbol DestinationParameterReference
    syntax SourceParameterReference ::= ParameterReference // need rules
    syntax DirectionalConnectionSymbol ::= ParameterReference
    syntax DestinationParameterReference ::= ParameterReference

  syntax ParameterConnectionRefinement ::= "paramenter"
  syntax ParameterReference ::= ComponentTypeParameterIdentifier 
            |  ComponentTypeParameterIdentifier "." DataSubcomponentIdentifier
            |  SubprogramCallIdentifier "." ParameterIdentifier
            |  ComponentTypePortIdentifier
            |  ComponentTypePortIdentifier "." DataSubcomponentIdentifier
            |  DataSubcomponentIdentifier
            |  RequiresDataAccessIdentifier
            |  ComponentTypeFeatureGroupIdentifier "." ElementDataAccessIdentifier
            |  ComponentTypeFeatureFeatureGroupIdentifier "." ElementPortOrParameterIdentifier
    
    syntax ComponentTypeParameterIdentifier ::= Id
    syntax RequiresDataAccessIdentifier ::= Id
    syntax ComponentTypeFeatureFeatureGroupIdentifier ::= Id
    syntax ElementPortOrParameterIdentifier ::= Id
    
endmodule

module PARAMETERCONNECTION
  
  imports PARAMETERCONNECTION-SYNTAX

endmodule