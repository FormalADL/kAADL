module ACCESSCONNECTION-SYNTAX
// 9.4 check
  syntax AccessConnection ::= AccessConnectionKeyword "access" SourceAccessRef ConnectionSymbol DestinationAccessRef
    syntax AccessConnectionKeyword ::= "bus" | "subprogram" | "subprogram" "group" | "data"
    syntax SourceAccessRef ::= AccessRef
    syntax DestinationAccessRef ::= AccessRef
  
  syntax AccessConnectionRefinement ::= AccessConnectionKeyword "access "
  syntax AccessRef ::= RequiresAccessId
        |  ProvidesAccessId
        |  FetGroupId "." RequiresAccessId
        |  FetGroupId "." ProvidesAccessId
        |  SubCmpId "." ProvidesAccessId
        |  SubCmpId "." RequiresAccessId
        |  SubprogramCallId "." RequiresOrProvidesAccessId
        |  SubCmpId
        |  "processor" "." ProvidesSubprogramAccessId
    syntax RequiresAccessId ::= Id
    syntax ProvidesAccessId ::= Id
    syntax RequiresOrProvidesAccessId ::= Id
endmodule

module ACCESSCONNECTION
  
//  imports ACCESSCONNECTION-SYNTAX
endmodule
