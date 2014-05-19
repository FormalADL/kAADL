module PORTCONNECTION-SYNTAX
// 9.2  check
  syntax PortConnection ::= "port" SourcePortConnectionRefer ConnectionSymbol DesitinationPortConnectionReference
    syntax SourcePortConnectionRefer ::= PortConnectionRefence
    syntax DesitinationPortConnectionReference ::= PortConnectionRefence  

  syntax PortConnectionRefinement ::= "port"
  syntax PortConnectionRefence ::= ComponentTypePortIdentifier
              |  SubcomponentIdentifier "." PortIdentifier
              |  ComponentTypeFeatureGroupIdentifier "." ElementPortIdentifier
              |  ComponentTypePortIdentifier "." DataSubcomponentIdentifier
              |  ComponentTypeRequiresDataAccessIdentifier
              |  DataSubcomponentIdentifier
              |  SubcomponentIdentifier "." ProvidesDataAccessIdentifier
              |  ComponentTypeFeatureGroupIdentifier "."ElementDataAccessIdentifier
              |  DataSubcomponentIdentifier "." DataSubcomponentIdentifier
              |  "processor" "." ProcessorPortIdentifier
              |  "self" "." EventOrEventDataSourceIdentifier

    syntax ComponentTypePortIdentifier ::= Id
    syntax PortIdentifier ::= Id
    syntax ElementPortIdentifier ::=  Id
    syntax DataSubcomponentIdentifier ::=  Id
    syntax ComponentTypeRequiresDataAccessIdentifier ::=  Id
    syntax ProvidesDataAccessIdentifier ::= Id
    syntax ElementDataAccessIdentifier ::= Id
    syntax ProcessorPortIdentifier ::= Id
    syntax EventOrEventDataSourceIdentifier ::= Id
  
endmodule

module PORTCONNECTION
  
  imports PORTCONNECTION-SYNTAX

endmodule