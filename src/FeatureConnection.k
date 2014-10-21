module FEATURECONNECTION-SYNTAX

syntax FetConnection ::= Mfeature SrcFetRef ConnectionSymbol DestFetRef 
syntax SrcFetRef ::= FetRef 
syntax DestFetRef ::= FetRef 
syntax ConnectionSymbol ::= DirecConnectSymb 
			| BidirectConnectSymb 
syntax DirecConnectSymb ::= MArrows 
syntax BidirectConnectSymb ::= MDoubleArrows 
syntax FetRef ::= Id 
			| Id MPoint Id 
syntax FetConnectionRefinement ::= Mfeature 
endmodule
