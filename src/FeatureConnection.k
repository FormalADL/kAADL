module FEATURECONNECTION-SYNTAX
// 9.1 check
  syntax FeatureConnection ::= "feature " SourceFeatureReference ConnectionSymbol DestinationFeatureReference
    syntax SourceFeatureReference ::= FeatureReference
    syntax ConnectionSymbol ::= DirectionalConnectSymbol | BidirectionalConnectSymbol
      syntax DirectionalConnectSymbol ::= "->"
      syntax BidirectionalConnectSymbol ::= "<->"
    syntax DestinationFeatureReference ::= FeatureReference

  syntax FeatureReference ::= ComponentTypeFeatureIdentifier
          | ComponentTypeFeatureGroupIdentifier "." FeatureIdentifier
          | SubcomponentIdentifier "." FeatureIdentifier
          | SubprogramCallIdentifier "." FeatureIdentifier
    syntax ComponentTypeFeatureIdentifier ::= Id
    syntax ComponentTypeFeatureGroupIdentifier ::=  Id
    syntax FeatureIdentifier ::= Id
    syntax SubprogramCallIdentifier ::= Id

  syntax FeatureConnectionRefinement ::= "feature"

endmodule

module  FEATURECONNECTION

//  imports FEATURECONNECTION-SYNTAX

endmodule