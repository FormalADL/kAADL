module ABSTRACTFEATURE-SYNTAX

  syntax AbstractFetSpec ::= AbstractFetId ":" "in" "feature" FetProtoTypeId
                               | AbstractFetId ":" "in" "feature" 
                               | AbstractFetId ":" "out" "feature" FetProtoTypeId
                               | AbstractFetId ":" "out" "feature" 
  syntax AbstractFetId ::= Id
  syntax FetProtoTypeId ::= Id
  syntax AbstractFetRefinement ::= PortRefinement 
                                     | FetGroupRefinement
                                     | SubCmpAccessRefinement
                                     | ParameterRefinement
            					     | AbstractFetId ":" "refined" "to" "in" "feature" FetProtoTypeId
                                     | AbstractFetId ":" "refined" "to" "in" "feature" 
                                     | AbstractFetId ":" "refined" "to" "out" "feature" FetProtoTypeId
                                     | AbstractFetId ":" "refined" "to" "out" "feature" 
endmodule