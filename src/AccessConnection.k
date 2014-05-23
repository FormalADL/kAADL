module ACCESSCONNECTION-SYNTAX
// 9.4 check
  syntax AccessConnection ::= AccessConnectionKeyword "access " SourceAccessRef ConnectionSymbol DestinationAccessRef
    syntax AccessConnectionKeyword ::= "bus " | "subprogram " | "subprogram ""group " | "data "
    syntax SourceAccessRef ::= AccessRef
    syntax DestinationAccessRef ::= AccessRef
  
  syntax AccessConnectionRefinement ::= AccessConnectionKeyword "access "
  syntax AccessRef ::= RequiresAccessIdentifier
        |  ProvidesAccessIdentifier
        |  FetGroupIdentifier "." RequiresAccessIdentifier
        |  FetGroupIdentifier "." ProvidesAccessIdentifier
        |  SubCmpIdentifier "." ProvidesAccessIdentifier
        |  SubCmpIdentifier "." RequiresAccessIdentifier
        |  SubprogramCallIdentifier "." RequiresOrProvidesAccessIdentifier
        |  SubCmpIdentifier
        |  "processor" "." ProvidesSubprogramAccessIdentifier
    syntax RequiresAccessIdentifier ::= Id
    syntax ProvidesAccessIdentifier ::= Id
    syntax RequiresOrProvidesAccessIdentifier ::= Id
endmodule

module ACCESSCONNECTION
  
//  imports ACCESSCONNECTION-SYNTAX
endmodule
