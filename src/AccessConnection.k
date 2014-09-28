module ACCESSCONNECTION-SYNTAX

  syntax AccessConnection ::=  Maccess  SourceAccessRef ConnectionSymbol DestinationAccessRef
			   |  AccessConnectionKeyword  Maccess  SourceAccessRef ConnectionSymbol DestinationAccessRef
    syntax AccessConnectionKeyword ::=  Mbus  |  Msubprogram  |  Msubprogram   Mgroup  |  Mdata 
    syntax SourceAccessRef ::= AccessRef
    syntax DestinationAccessRef ::= AccessRef
  
  syntax AccessConnectionRefinement ::=  Maccess 
				     |  AccessConnectionKeyword  Maccess 
  syntax AccessRef ::= RequiresAccessId
        |  ProvidesAccessId
        |  FetGroupId  MPoint  RequiresAccessId
        |  FetGroupId  MPoint  ProvidesAccessId
        |  SubCmpId  MPoint  ProvidesAccessId
        |  SubCmpId  MPoint  RequiresAccessId
        |  SubPgmCallId  MPoint  RequiresOrProvidesAccessId
        |  SubCmpId
        |   Mprocessor   MPoint  ProvidesSubPgmAccessId
    syntax RequiresAccessId ::= Id
    syntax ProvidesAccessId ::= Id
    syntax RequiresOrProvidesAccessId ::= Id
endmodule

module ACCESSCONNECTION
  
//  imports ACCESSCONNECTION-SYNTAX
endmodule

