module FEATUREGROUPCONNECTION-SYNTAX
// 9.5 check
  syntax FeatureGroupConnection ::= "feature " "group" SourceFeatureGroupReference ConnectionSymbol DestinationFeatureGroupReference
  syntax SourceFeatureGroupReference ::= FeatureGroupReference
  syntax DestinationFeatureGroupReference ::= FeatureGroupReference
  syntax FeatureGroupConnectionRefinement ::= "feature " "group "

  syntax FeatureGroupReference ::= ComponentTypeFeatureGroupIdentifier
              |  SubcomponentIdentifier "." FeatureGroupIdentifier
              |  ComponentTypeFeatureGroupIdentifier "." ElementFeatureGroupIdentifier
    syntax ElementFeatureGroupIdentifier ::= Id

endmodule

module FEATUREGROUPCONNECTION

  imports FEATUREGROUPCONNECTION-SYNTAX

endmodule