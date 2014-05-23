module PORTCONNECTION-SYNTAX
// 9.2  check
  syntax PortConnection ::= "port" SourcePortConnectionRefer ConnectionSymbol DesitinationPortConnectionReference
    syntax SourcePortConnectionRefer ::= PortConnectionRefence
    syntax DesitinationPortConnectionReference ::= PortConnectionRefence  

  syntax PortConnectionRefinement ::= "port"
  syntax PortConnectionRefence ::= CmpTypePortIdentifier
              |  SubcomponentIdentifier "." PortIdentifier
              |  CmpTypeFetGroupIdentifier "." ElementPortIdentifier
              |  CmpTypePortIdentifier "." DataSubcomponentIdentifier
              |  CmpTypeRequiresDataAccessIdentifier
              |  DataSubcomponentIdentifier
              |  SubcomponentIdentifier "." ProvidesDataAccessIdentifier
              |  CmpTypeFetGroupIdentifier "."ElementDataAccessIdentifier
              |  DataSubcomponentIdentifier "." DataSubcomponentIdentifier
              |  "processor" "." ProcessorPortIdentifier
              |  "self" "." EventOrEventDataSourceIdentifier

    syntax CmpTypePortIdentifier ::= Id
    syntax PortIdentifier ::= Id
    syntax ElementPortIdentifier ::=  Id
    syntax DataSubcomponentIdentifier ::=  Id
    syntax CmpTypeRequiresDataAccessIdentifier ::=  Id
    syntax ProvidesDataAccessIdentifier ::= Id
    syntax ElementDataAccessIdentifier ::= Id
    syntax ProcessorPortIdentifier ::= Id
    syntax EventOrEventDataSourceIdentifier ::= Id
  
endmodule

module PORTCONNECTION
  
//  imports PORTCONNECTION-SYNTAX

endmodule