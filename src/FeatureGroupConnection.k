module FEATUREGROUPCONNECTION-SYNTAX

syntax FetGroupConnection ::= Mfeature Mgroup SourceFetGroupRef ConnectionSymbol DestinationFetGroupRef 
syntax SourceFetGroupRef ::= FetGroupRef 
syntax DestinationFetGroupRef ::= FetGroupRef 
syntax FetGroupConnectionRefinement ::= Mfeature Mgroup 
syntax FetGroupRef ::= Id 
			| Id MPoint Id 
endmodule
