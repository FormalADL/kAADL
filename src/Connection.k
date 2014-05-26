module CONNECTION-SYNTAX
  syntax Connection ::= ConnectionId ":" SomeConnections PpeInMode ";"
  syntax ConnectionId ::= NODEF
  syntax SomeConnections ::= FetConnection 
							 | PortConnection
                             | ParameterConnection
                             | AccessConnection
                             | FetGroupConnection    
  syntax PpeInMode ::= "{" PpeAssocList "}" InModesAndTransititions
		             | "{" PpeAssocList "}"
                     | InModesAndTransititions
                     | NoneStatement
  syntax InModesAndTransititions ::= NODEF
  syntax PpeAssocList ::= PpeAssoc | PpeAssoc PpeAssocList

  syntax ConnectionRefinement ::= ConnectionId ":" "refined" "to" SomeRefinements PpeInMode ";"
  syntax SomeRefinements ::= FetConnectionRefinement 
                           | PortConnectionRefinement
                           | ParameterConnectionRefinement
                           | AccessConnectionRefinement
                           | FetGroupConnectionRefinement  
endmodule

module CONNECTION 

//  imports CONNECTION-SYNTAX

endmodule