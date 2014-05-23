module LEXICALELEMENT-SYNTAX 
//  syntax Character ::= GraphicCharacter | FormatEffector | OtherControlCharacter
//  syntax GraphicCharacter ::= IdentifierLetter | Digit | SpaceCharacter | SpecialCharacter
  
//  syntax LetterOrDigitList ::= NoneStatement
//					  |  LetterOrDigit
//					  |  UnderLine LetterOrDigit
//					  |  LetterOrDigitList LetterOrDigitList
//  syntax LetterOrDigit ::= IdentifierLetter | Digit
//  syntax IdentifierLetter ::=NODEF
//  syntax Digit ::= Int
//  syntax SpaceCharacter ::=NODEF
//  syntax SpecialCharacter ::=NODEF
//  syntax UnderLine ::= NODEF
  syntax Identifier ::= Id 
  syntax NumericLiteral ::= IntegerLiteral 
                          | RealLiteral
  syntax IntegerLiteral ::= DecimalIntegerLiteral 
//                          | BasedIntegerLiteral
  syntax DecimalIntegerLiteral ::= Numeral 
                                 | Numeral PositiveExponent
  syntax Numeral ::= Int
//  syntax DigitList ::= NoneStatement 
//				     | Digit 
//					 | UnderLine Digit 
//					 | DigitList DigitList
  syntax PositiveExponent ::= "e" Numberal 
                            | "e" "+" Numberal
//  syntax BasedIntegerLiteral ::= Base "#" BasedNumberal "#" 
//						       | Base "#" BasedNumberal "#" PositiveExponent
//  syntax Base ::= Digit 
//                | Digit Digit
//  syntax BasedNumberal ::= ExtendedDigit ExtendedDigitList
//  syntax ExtendedDigitList ::= NoneStatement
//				    		 | ExtendedDigit
//						     | UnderLine ExtendedDigit
//						     | ExtendedDigitList ExtendedDigitList
//  syntax ExtendedDigit ::= Digit | "a" | "b" | "c" | "d" | "e" | "f" 
  syntax RealLiteral ::= DecimalRealLiteral
  syntax DecimalRealLiteral ::= Numeral "." Numeral 
						      | Numeral"." Numeral Exponent
  syntax Exponent ::= "E" Numberal 
                    | "E" "+" Numberal

  syntax StringLiteral ::= String  //"\"" StringElementList "\""
//  syntax StringElementList ::= NoneStatement
//						     | StringElement
//						     | StringElementList StringElementList
//  syntax StringElement ::= "\"" "\"" 
//                         | NonQuotationMarkGraphicCharacter
//  syntax NonQuotationMarkGraphicCharacter ::= NODEF
//  syntax Comment ::= "-" NonEndOfLineCharacterList
//  syntax NonEndOfLineCharacterList ::= NoneStatement
//							         | NonEndOfLineCharacter
//							         | NonEndOfLineCharacterList NonEndOfLineCharacterList
//  syntax NonEndOfLineCharacter ::= NODEF
endmodule

module  LEXICALELEMENT
//	imports LEXICALELEMENT-SYNTAX
endmodule