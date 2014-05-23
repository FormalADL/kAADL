module PORTCONNECTION-SYNTAX
// 9.2  check
  syntax PortConnection ::= "port" SourcePortConnectionRefer ConnectionSymbol DesitinationPortConnectionRef
    syntax SourcePortConnectionRefer ::= PortConnectionRefence
    syntax DesitinationPortConnectionRef ::= PortConnectionRefence  

  syntax PortConnectionRefinement ::= "port"
  syntax PortConnectionRefence ::= CmpTypePortIdentifier
              |  SubCmpIdentifier "." PortIdentifier
              |  CmpTypeFetGroupIdentifier "." ElementPortIdentifier
              |  CmpTypePortIdentifier "." DataSubCmpIdentifier
              |  CmpTypeRequiresDataAccessIdentifier
              |  DataSubCmpIdentifier
              |  SubCmpIdentifier "." ProvidesDataAccessIdentifier
              |  CmpTypeFetGroupIdentifier "."ElementDataAccessIdentifier
              |  DataSubCmpIdentifier "." DataSubCmpIdentifier
              |  "processor" "." ProcessorPortIdentifier
              |  "self" "." EventOrEventDataSourceIdentifier

    syntax CmpTypePortIdentifier ::= Id
    syntax PortIdentifier ::= Id
    syntax ElementPortIdentifier ::=  Id
    syntax DataSubCmpIdentifier ::=  Id
    syntax CmpTypeRequiresDataAccessIdentifier ::=  Id
    syntax ProvidesDataAccessIdentifier ::= Id
    syntax ElementDataAccessIdentifier ::= Id
    syntax ProcessorPortIdentifier ::= Id
    syntax EventOrEventDataSourceIdentifier ::= Id
  
endmodule

module PORTCONNECTION
  
//  imports PORTCONNECTION-SYNTAX

endmodule