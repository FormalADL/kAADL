module PORTCONNECTION-SYNTAX

syntax PortConnection ::= Mport SrcPortConnectionRef ConnectionSymbol DestPortConnectionRef 
syntax SrcPortConnectionRef ::= PortConnectionRefence 
syntax DestPortConnectionRef ::= PortConnectionRefence 
syntax PortConnectionRefinement ::= Mport 
syntax PortConnectionRefence ::= Id 
			| Id MPoint Id 
			| Mprocessor MPoint Id 
			| Mself MPoint Id 
endmodule
