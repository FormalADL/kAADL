module CONNECTION-SYNTAX

  syntax Connection ::= ConnectionId  Mcolon  SomeConnections  MSemicolon   
  syntax Connection ::= ConnectionId  Mcolon  SomeConnections PpeInMode  MSemicolon 
  syntax ConnectionId ::= Id
  syntax SomeConnections ::= FetConnection 
			               | PortConnection
                           | ParameterConnection
                           | AccessConnection
                           | FetGroupConnection 
						   
  syntax PpeInMode ::=  MBraceLeft  PpeAssocList  MBraceRight  InModesAndTransitions  MSemicolon 
		             |  MBraceLeft  PpeAssocList  MBraceRight   MSemicolon 
                     | InModesAndTransitions  MSemicolon 
  
  syntax PpeAssocList ::= PpeAssoc 
                        | PpeAssocList PpeAssocList

  syntax ConnectionRefinement ::= ConnectionId  Mcolon   Mrefined   Mto  SomeRefinements  MSemicolon 
  syntax ConnectionRefinement ::= ConnectionId  Mcolon   Mrefined   Mto  SomeRefinements PpeInMode  MSemicolon 
  syntax SomeRefinements ::= FetConnectionRefinement 
                           | PortConnectionRefinement
                           | ParameterConnectionRefinement
                           | AccessConnectionRefinement
                           | FetGroupConnectionRefinement  
endmodule

module CONNECTION 

//  imports CONNECTION-SYNTAX

endmodule
