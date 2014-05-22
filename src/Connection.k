module CONNECTION-SYNTAX
// 9.0  check
  syntax Connection ::= ConnectionIdentifier ":" SomeConnections PropertyInMode ";"
  syntax ConnectionIdentifier ::= NODEF
  syntax SomeConnections ::= FeatureConnection 
							 | PortConnection
                             | ParameterConnection
                             | AccessConnection
                             | FeatureGroupConnection    
  syntax PropertyInMode ::= "{" PropertyAssociationList "}" InModesAndTransititions
						 | "{" PropertyAssociationList "}"
          | InModesAndTransititions
          | NoneStatement
      syntax InModesAndTransititions ::= NODEF
      syntax PropertyAssociationList ::= PropertyAssociation | PropertyAssociation PropertyAssociationList

  syntax ConnectionRefinement ::= ConnectionIdentifier ":" "refined ""to " SomeRefinements PropertyInMode ";"
    syntax SomeRefinements ::=  FeatureConnectionRefinement 
          |  PortConnectionRefinement
          |  ParameterConnectionRefinement
          |  AccessConnectionRefinement
          |  FeatureGroupConnectionRefinement  
endmodule

module CONNECTION 

//  imports CONNECTION-SYNTAX

endmodule