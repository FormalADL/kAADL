module ABSTRACTFEATURE-SYNTAX

  syntax AbstractFetSpec ::= AbstractFetId  Mcolon   Min   Mfeature  FetProtoTypeId
                           | AbstractFetId  Mcolon   Min   Mfeature  
                           | AbstractFetId  Mcolon   Mout   Mfeature  FetProtoTypeId
                           | AbstractFetId  Mcolon   Mout   Mfeature  
  syntax AbstractFetId ::= Id
  syntax FetProtoTypeId ::= Id
  syntax AbstractFetRefinement ::= AbstractFetId  Mcolon   Mrefined   Mto   Min   Mfeature  FetProtoTypeId
                                 | AbstractFetId  Mcolon   Mrefined   Mto   Min   Mfeature  
                                 | AbstractFetId  Mcolon   Mrefined   Mto   Mout   Mfeature  FetProtoTypeId
                                 | AbstractFetId  Mcolon   Mrefined   Mto   Mout   Mfeature  
								 | PortRefinement 
                                 | FetGroupRefinement
                                 | SubCmpAccessRefinement
                                 | ParameterRefinement

endmodule
