module PORTCONNECTION-SYNTAX
 
  syntax PortConnection ::= "port" SrcPortConnectionRef ConnectionSymbol DestPortConnectionRef
  syntax SrcPortConnectionRef ::= PortConnectionRefence
  syntax DestPortConnectionRef ::= PortConnectionRefence  
  syntax PortConnectionRefinement ::= "port"
  
  syntax PortConnectionRefence ::= CmpTypePortId
                                 | SubCmpId "." PortId
                                 | CmpTypeFetGroupId "." ElementPortId
                                 | CmpTypePortId "." DataSubCmpId
                                 | CmpTypeRequiresDataAccessId
                                 | DataSubCmpId
                                 | SubCmpId "." ProvidesDataAccessId
                                 | CmpTypeFetGroupId "."ElementDataAccessId
                                 | DataSubCmpId "." DataSubCmpId
                                 | "processor" "." ProcessorPortId
                                 | "self" "." EventOrEventDataSourceId

    syntax CmpTypePortId ::= Id
    syntax ElementPortId ::=  Id
    syntax DataSubCmpId ::=  Id
    syntax CmpTypeRequiresDataAccessId ::=  Id
    syntax ProvidesDataAccessId ::= Id
    syntax ElementDataAccessId ::= Id
    syntax ProcessorPortId ::= Id
    syntax EventOrEventDataSourceId ::= Id
  
endmodule

module PORTCONNECTION
  
//  imports PORTCONNECTION-SYNTAX

endmodule