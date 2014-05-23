module FEATURECONNECTION-SYNTAX
// 9.1 check
  syntax FetConnection ::= "feature " SourceFetRef ConnectionSymbol DestinationFetRef
    syntax SourceFetRef ::= FetRef
    syntax ConnectionSymbol ::= DirectionalConnectSymbol | BidirectionalConnectSymbol
      syntax DirectionalConnectSymbol ::= "->"
      syntax BidirectionalConnectSymbol ::= "<->"
    syntax DestinationFetRef ::= FetRef

  syntax FetRef ::= CmpTypeFetIdentifier
          | CmpTypeFetGroupIdentifier "." FetIdentifier
          | SubCmpIdentifier "." FetIdentifier
          | SubprogramCallIdentifier "." FetIdentifier
    syntax CmpTypeFetIdentifier ::= Id
    syntax CmpTypeFetGroupIdentifier ::=  Id
    syntax FetIdentifier ::= Id
    syntax SubprogramCallIdentifier ::= Id

  syntax FetConnectionRefinement ::= "feature"

endmodule

module  FEATURECONNECTION

//  imports FEATURECONNECTION-SYNTAX

endmodule