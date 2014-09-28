module SUBCOMPONENT-SYNTAX
  syntax SubCmp ::= SubCmpId  Mcolon  CmpCategory SubCmpAssocDef  MSemicolon 
  syntax SubCmpId ::= Id
  syntax SubCmpAssocDef ::= UniCmpClassifierRef 
                          | UniCmpClassifierRef ProtoTypeBindings
                          | ProtoTypeId
                          | ArrayDimensions 
                          | ArrayDimensions ArrayElementImplList
                          |  MBraceLeft  SubCmpPpeAssocList  MBraceRight 
                          |  MBraceLeft  ContainedPpeAssocList  MBraceRight 
                          | CmpInModes 
						  | SubCmpAssocDef SubCmpAssocDef    //bug!

  syntax SubCmpPpeAssocList ::= PpeAssoc
                              | SubCmpPpeAssocList SubCmpPpeAssocList
  
  syntax SubCmpRefinement ::= SubCmpId  Mrefined   Mto  CmpCategory SubCmpAssocDef  MSemicolon 
 						  
  syntax UniCmpClassifierRef ::= UniCmpTypeRef
                               | UniCmpImplRef

  syntax ArrayDimensions ::= ArrayDimension
                           | ArrayDimensions ArrayDimensions
						   
  syntax ArrayDimension ::=  MLeftBracket  ArrayDimensionSize  MRightBracket 
  syntax ArrayDimensionSize ::= Numeral 
                              | UniPpeConstantId  
							  | UniPpeId

  syntax ArrayElementImplListTmp ::= UniCmpImplRef ProtoTypeBindings
                                   | UniCmpImplRef

  syntax ArrayElementImplList ::=  MBracketLeft  ArrayElementImplListTmps  MBracketRight 
  
  syntax ArrayElementImplListTmps ::= ArrayElementImplListTmp
                                    | ArrayElementImplListTmp  MComma  ArrayElementImplListTmp
/* 
    defined in standard, but it's very strange that no relation with other definition 
    we move this definitions to commdef.k with nodef	
*/	
//  syntax ArraySelectionName ::= Id ArraySelection
//  syntax ArraySelection ::= ArraySelection ArraySelection
//  syntax ArraySelection ::=  MLeftBracket  SelectionRange  MRightBracket 
//  syntax SelectionRange ::= Numeral | Numeral  MDoubleDiont  Numeral
endmodule
