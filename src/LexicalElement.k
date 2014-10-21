module LEXICALELEMENT-SYNTAX 

syntax NumericLiteral ::= IntegerLiteral 
			| RealLiteral 
syntax IntegerLiteral ::= DecimalIntegerLiteral 
syntax DecimalIntegerLiteral ::= Numeral 
			| Numeral PositiveExponent 
syntax Numeral ::= Int 
syntax PositiveExponent ::= Me Numeral 
			| Me MPlus Numeral 
syntax RealLiteral ::= DecimalRealLiteral 
syntax DecimalRealLiteral ::= Numeral MPoint Numeral 
			| Numeral MPoint Numeral Exponent 
syntax Exponent ::= Me Numeral 
			| Me MPlus Numeral 
syntax StringLiteral ::= String 
endmodule
