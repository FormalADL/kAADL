module CONNECTION-SYNTAX
// 9.0  check
  syntax Connection ::= ConnectionIdentifier ":" SomeConnections PpeInMode ";"
  syntax ConnectionIdentifier ::= NODEF
  syntax SomeConnections ::= FeatureConnection 
							 | PortConnection
                             | ParameterConnection
                             | AccessConnection
                             | FeatureGroupConnection    
  syntax PpeInMode ::= "{" PpeAssociationList "}" InModesAndTransititions
						 | "{" PpeAssociationList "}"
          | InModesAndTransititions
          | NoneStatement
      syntax InModesAndTransititions ::= NODEF
      syntax PpeAssociationList ::= PpeAssociation | PpeAssociation PpeAssociationList

  syntax ConnectionRefinement ::= ConnectionIdentifier ":" "refined ""to " SomeRefinements PpeInMode ";"
    syntax SomeRefinements ::=  FeatureConnectionRefinement 
          |  PortConnectionRefinement
          |  ParameterConnectionRefinement
          |  AccessConnectionRefinement
          |  FeatureGroupConnectionRefinement  
endmodule

module CONNECTION 

//  imports CONNECTION-SYNTAX

endmodule