module FEATURECONNECTION-SYNTAX

//  syntax FetConnection ::=  Mfeature  SrcFetRef  MArrows  DestFetRef
//  syntax FetConnection ::=  Mfeature  SrcFetRef  MDoubleArrows  DestFetRef
  syntax FetConnection ::=  Mfeature  SrcFetRef ConnectionSymbol DestFetRef
  syntax SrcFetRef ::= FetRef
  syntax DestFetRef ::= FetRef
  
  syntax ConnectionSymbol ::= DirecConnectSymb | BidirectConnectSymb
  syntax DirecConnectSymb ::=  MArrows 
  syntax BidirectConnectSymb ::=  MDoubleArrows 
 
  syntax FetRef ::= CmpTypeFetId
                  | CmpTypeFetGroupId  MPoint  FetId
                  | SubCmpId  MPoint  FetId
                  | SubPgmCallId  MPoint  FetId
  
/*here we need to fix it, we need solve Id map in namespace configuration*/  
  syntax CmpTypeFetId ::= Id
  syntax CmpTypeFetGroupId ::=  Id
  syntax FetId ::= Id
  syntax SubPgmCallId ::= Id

  syntax FetConnectionRefinement ::=  Mfeature 

endmodule

module  FEATURECONNECTION

//imports FEATURECONNECTION-SYNTAX

endmodule
