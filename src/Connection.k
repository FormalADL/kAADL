module CONNECTION-SYNTAX

  syntax Connection ::= ConnectionId  Mcolon  SomeConnections  MSemicolon    
  syntax ConnectionId ::= Id
  syntax SomeConnections ::= FetConnection PpeInMode
			   | PortConnection PpeInMode
                           | ParameterConnection PpeInMode
                           | AccessConnection PpeInMode
                           | FetGroupConnection PpeInMode
                           | FetConnection 
			   | PortConnection 
                           | ParameterConnection 
                           | AccessConnection 
                           | FetGroupConnection 
						   
  syntax PpeInMode ::=  MBraceLeft  PpeAssocList  MBraceRight  InModesAndTransitions  
		             |  MBraceLeft  PpeAssocList  MBraceRight   
                     | InModesAndTransitions  
  
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
