module ABSTRACTFEATURE-SYNTAX
// 8.1 check
  syntax AbstractFeatureSpec ::= AbstractFeatureIdentifier ":" "in" "feature" FeatureProtoTypeIdentifier
            |  AbstractFeatureIdentifier ":" "in" "feature" 
            |  AbstractFeatureIdentifier ":" "out" "feature" FeatureProtoTypeIdentifier
            |  AbstractFeatureIdentifier ":" "out" "feature" 
    syntax AbstractFeatureIdentifier ::= Id
    syntax FeatureProtoTypeIdentifier ::= Id
  syntax AbstractFeatureRefinement ::= PortRefinement 
            |  FeatureGroupRefinement
            |  SubcomponentAccessRefinement
            |  ParameterRefinement
            |  AbstractFeatureIdentifier ":" "refined" "to" "in" "feature" FeatureProtoTypeIdentifier
            |  AbstractFeatureIdentifier ":" "refined" "to" "in" "feature" 
            |  AbstractFeatureIdentifier ":" "refined" "to" "out" "feature" FeatureProtoTypeIdentifier
            |  AbstractFeatureIdentifier ":" "refined" "to" "out" "feature" 
endmodule