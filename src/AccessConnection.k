module ACCESSCONNECTION-SYNTAX

syntax AccessConnection ::= Maccess SourceAccessRef ConnectionSymbol DestinationAccessRef 
			| AccessConnectionKeyword Maccess SourceAccessRef ConnectionSymbol DestinationAccessRef 
syntax AccessConnectionKeyword ::= Mbus 
			| Msubprogram 
			| Msubprogram Mgroup 
			| Mdata 
syntax SourceAccessRef ::= AccessRef 
syntax DestinationAccessRef ::= AccessRef 
syntax AccessConnectionRefinement ::= Maccess 
			| AccessConnectionKeyword Maccess 
syntax AccessRef ::= Id 
			| Id MPoint Id 
			| Mprocessor MPoint Id 
endmodule
