module FEATURECONNECTION-SYNTAX
// 9.1 check
  syntax FetConnection ::= "feature" SourceFetRef ConnectionSymbol DestinationFetRef
    syntax SourceFetRef ::= FetRef
    syntax ConnectionSymbol ::= DirectionalConnectSymbol | BidirectionalConnectSymbol
      syntax DirectionalConnectSymbol ::= "->"
      syntax BidirectionalConnectSymbol ::= "<->"
    syntax DestinationFetRef ::= FetRef

  syntax FetRef ::= CmpTypeFetId
          | CmpTypeFetGroupId "." FetId
          | SubCmpId "." FetId
          | SubPgmCallId "." FetId
    syntax CmpTypeFetId ::= Id
    syntax CmpTypeFetGroupId ::=  Id
    syntax FetId ::= Id
    syntax SubPgmCallId ::= Id

  syntax FetConnectionRefinement ::= "feature"

endmodule

module  FEATURECONNECTION

//  imports FEATURECONNECTION-SYNTAX

endmodule