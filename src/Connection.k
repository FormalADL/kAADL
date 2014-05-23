module CONNECTION-SYNTAX
// 9.0  check
  syntax Connection ::= ConnectionIdentifier ":" SomeConnections PpeInMode ";"
  syntax ConnectionIdentifier ::= NODEF
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

  syntax ConnectionRefinement ::= ConnectionIdentifier ":" "refined ""to " SomeRefinements PpeInMode ";"
    syntax SomeRefinements ::=  FetConnectionRefinement 
          |  PortConnectionRefinement
          |  ParameterConnectionRefinement
          |  AccessConnectionRefinement
          |  FetGroupConnectionRefinement  
endmodule

module CONNECTION 

//  imports CONNECTION-SYNTAX

endmodule