module ACCESSCONNECTION-SYNTAX
// 9.4 check
  syntax AccessConnection ::= AccessConnectionKeyword "access " SourceAccessReference ConnectionSymbol DestinationAccessReference
    syntax AccessConnectionKeyword ::= "bus " | "subprogram " | "subprogram ""group " | "data "
    syntax SourceAccessReference ::= AccessReference
    syntax DestinationAccessReference ::= AccessReference
  
  syntax AccessConnectionRefinement ::= AccessConnectionKeyword "access "
  syntax AccessReference ::= RequiresAccessIdentifier
        |  ProvidesAccessIdentifier
        |  FetGroupIdentifier "." RequiresAccessIdentifier
        |  FetGroupIdentifier "." ProvidesAccessIdentifier
        |  SubcomponentIdentifier "." ProvidesAccessIdentifier
        |  SubcomponentIdentifier "." RequiresAccessIdentifier
        |  SubprogramCallIdentifier "." RequiresOrProvidesAccessIdentifier
        |  SubcomponentIdentifier
        |  "processor" "." ProvidesSubprogramAccessIdentifier
    syntax RequiresAccessIdentifier ::= Id
    syntax ProvidesAccessIdentifier ::= Id
    syntax RequiresOrProvidesAccessIdentifier ::= Id
endmodule

module ACCESSCONNECTION
  
//  imports ACCESSCONNECTION-SYNTAX
endmodule
