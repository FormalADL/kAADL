module LEXICALELEMENT-SYNTAX 
//  syntax Character ::= GraphicCharacter | FormatEffector | OtherControlCharacter
//  syntax GraphicCharacter ::= IdLetter | Digit | SpaceCharacter | SpecialCharacter
  
//  syntax LetterOrDigitList ::= NoneStatement
//					  |  LetterOrDigit
//					  |  UnderLine LetterOrDigit
//					  |  LetterOrDigitList LetterOrDigitList
//  syntax LetterOrDigit ::= IdLetter | Digit
//  syntax IdLetter ::=NODEF
//  syntax Digit ::= Int
//  syntax SpaceCharacter ::=NODEF
//  syntax SpecialCharacter ::=NODEF
//  syntax UnderLine ::= NODEF
//  syntax Id ::= Id 
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
  syntax PositiveExponent ::= Me  Numeral 
                            | Me  MPlus  Numeral
//  syntax BasedIntegerLiteral ::= Base   BasedNumberal   
//						       | Base   BasedNumberal   PositiveExponent
//  syntax Base ::= Digit 
//                | Digit Digit
//  syntax BasedNumberal ::= ExtendedDigit ExtendedDigitList
//  syntax ExtendedDigitList ::= NoneStatement
//				    		 | ExtendedDigit
//						     | UnderLine ExtendedDigit
//						     | ExtendedDigitList ExtendedDigitList
//  syntax ExtendedDigit ::= Digit | Ma  | Mb  | Mc  | Md  | Me  | Mf  
  syntax RealLiteral ::= DecimalRealLiteral
  syntax DecimalRealLiteral ::= Numeral MPoint  Numeral 
			      | NumeralMPoint  Numeral Exponent
