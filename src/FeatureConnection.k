module FEATURECONNECTION-SYNTAX
// 9.1 check
  syntax FetConnection ::= "feature " SourceFetReference ConnectionSymbol DestinationFetReference
    syntax SourceFetReference ::= FetReference
    syntax ConnectionSymbol ::= DirectionalConnectSymbol | BidirectionalConnectSymbol
      syntax DirectionalConnectSymbol ::= "->"
      syntax BidirectionalConnectSymbol ::= "<->"
    syntax DestinationFetReference ::= FetReference

  syntax FetReference ::= CmpTypeFetIdentifier
          | CmpTypeFetGroupIdentifier "." FetIdentifier
          | SubcomponentIdentifier "." FetIdentifier
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