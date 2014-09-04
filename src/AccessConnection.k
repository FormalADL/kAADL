module ACCESSCONNECTION-SYNTAX

  syntax AccessConnection ::= "access" SourceAccessRef ConnectionSymbol DestinationAccessRef
			   |  AccessConnectionKeyword "access" SourceAccessRef ConnectionSymbol DestinationAccessRef
    syntax AccessConnectionKeyword ::= "bus" | "subprogram" | "subprogram" "group" | "data"
    syntax SourceAccessRef ::= AccessRef
    syntax DestinationAccessRef ::= AccessRef
  
  syntax AccessConnectionRefinement ::= "access"
				     |  AccessConnectionKeyword "access"
  syntax AccessRef ::= RequiresAccessId
        |  ProvidesAccessId
        |  FetGroupId "." RequiresAccessId
        |  FetGroupId "." ProvidesAccessId
        |  SubCmpId "." ProvidesAccessId
        |  SubCmpId "." RequiresAccessId
        |  SubPgmCallId "." RequiresOrProvidesAccessId
        |  SubCmpId
        |  "processor" "." ProvidesSubPgmAccessId
    syntax RequiresAccessId ::= Id
    syntax ProvidesAccessId ::= Id
    syntax RequiresOrProvidesAccessId ::= Id
endmodule

module ACCESSCONNECTION
  
//  imports ACCESSCONNECTION-SYNTAX
endmodule
