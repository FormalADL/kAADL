module CONNECTION-SYNTAX

  syntax Connection ::= ConnectionId ":" SomeConnections ";"  
  syntax Connection ::= ConnectionId ":" SomeConnections PpeInMode ";"
  syntax ConnectionId ::= Id
  syntax SomeConnections ::= FetConnection 
			               | PortConnection
                           | ParameterConnection
                           | AccessConnection
                           | FetGroupConnection 
						   
  syntax PpeInMode ::= "{" PpeAssocList "}" InModesAndTransitions ";"
		             | "{" PpeAssocList "}" ";"
                     | InModesAndTransitions ";"
  
  syntax PpeAssocList ::= PpeAssoc 
                        | PpeAssocList PpeAssocList

  syntax ConnectionRefinement ::= ConnectionId ":" "refined" "to" SomeRefinements ";"
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