module PORTCONNECTION-SYNTAX

syntax PortConnection ::= Mport SrcPortConnectionRef ConnectionSymbol DestPortConnectionRef 
syntax SrcPortConnectionRef ::= PortConnectionRefence 
syntax DestPortConnectionRef ::= PortConnectionRefence 
syntax PortConnectionRefinement ::= Mport 
syntax PortConnectionRefence ::= AmbIdPointId
			| AmbProcessorPointId 
			| Mself MPoint Id 
endmodule
