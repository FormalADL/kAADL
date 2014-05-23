module ABSTRACTFEATURE-SYNTAX

  syntax AbstractFetSpec ::= AbstractFetIdentifier ":" "in" "feature" FetProtoTypeIdentifier
                               | AbstractFetIdentifier ":" "in" "feature" 
                               | AbstractFetIdentifier ":" "out" "feature" FetProtoTypeIdentifier
                               | AbstractFetIdentifier ":" "out" "feature" 
  syntax AbstractFetIdentifier ::= Id
  syntax FetProtoTypeIdentifier ::= Id
  syntax AbstractFetRefinement ::= PortRefinement 
                                     | FetGroupRefinement
                                     | SubcomponentAccessRefinement
                                     | ParameterRefinement
            					     | AbstractFetIdentifier ":" "refined" "to" "in" "feature" FetProtoTypeIdentifier
                                     | AbstractFetIdentifier ":" "refined" "to" "in" "feature" 
                                     | AbstractFetIdentifier ":" "refined" "to" "out" "feature" FetProtoTypeIdentifier
                                     | AbstractFetIdentifier ":" "refined" "to" "out" "feature" 
endmodule