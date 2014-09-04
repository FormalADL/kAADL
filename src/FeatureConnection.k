module FEATURECONNECTION-SYNTAX

//  syntax FetConnection ::= "feature" SrcFetRef "->" DestFetRef
//  syntax FetConnection ::= "feature" SrcFetRef "<->" DestFetRef
  syntax FetConnection ::= "feature" SrcFetRef ConnectionSymbol DestFetRef
  syntax SrcFetRef ::= FetRef
  syntax DestFetRef ::= FetRef
  
  syntax ConnectionSymbol ::= DirecConnectSymb | BidirectConnectSymb
  syntax DirecConnectSymb ::= "->"
  syntax BidirectConnectSymb ::= "<->"
 
  syntax FetRef ::= CmpTypeFetId
                  | CmpTypeFetGroupId "." FetId
                  | SubCmpId "." FetId
                  | SubPgmCallId "." FetId
  
/*here we need to fix it, we need solve Id map in namespace configuration*/  
  syntax CmpTypeFetId ::= Id
  syntax CmpTypeFetGroupId ::=  Id
  syntax FetId ::= Id
  syntax SubPgmCallId ::= Id

  syntax FetConnectionRefinement ::= "feature"

endmodule

module  FEATURECONNECTION

//imports FEATURECONNECTION-SYNTAX

endmodule