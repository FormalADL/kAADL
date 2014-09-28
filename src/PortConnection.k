module PORTCONNECTION-SYNTAX
 
  syntax PortConnection ::=  Mport  SrcPortConnectionRef ConnectionSymbol DestPortConnectionRef
  syntax SrcPortConnectionRef ::= PortConnectionRefence
  syntax DestPortConnectionRef ::= PortConnectionRefence  
  syntax PortConnectionRefinement ::=  Mport 
  
  syntax PortConnectionRefence ::= CmpTypePortId
                                 | SubCmpId  MPoint  PortId
                                 | CmpTypeFetGroupId  MPoint  ElementPortId
                                 | CmpTypePortId  MPoint  DataSubCmpId
                                 | CmpTypeRequiresDataAccessId
                                 | DataSubCmpId
                                 | SubCmpId  MPoint  ProvidesDataAccessId
                                 | CmpTypeFetGroupId  MPoint ElementDataAccessId
                                 | DataSubCmpId  MPoint  DataSubCmpId
                                 |  Mprocessor   MPoint  ProcessorPortId
                                 |  Mself   MPoint  EventOrEventDataSourceId

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
