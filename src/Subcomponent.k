module SUBCOMPONENT-SYNTAX
  syntax SubCmp ::= SubCmpId ":" CmpCategory SubCmpAssocDef ";"
  syntax SubCmpId ::= Id
  syntax SubCmpAssocDef ::= UniCmpClassifierRef 
                          | UniCmpClassifierRef ProtoTypeBindings
                          | ProtoTypeId
                          | ArrayDimensions 
                          | ArrayDimensions ArrayElementImplList
                          | "{" SubCmpPpeAssocList "}"
                          | "{" ContainedPpeAssocList "}"
                          | CmpInModes 
						  | SubCmpAssocDef SubCmpAssocDef    //bug!

  syntax SubCmpPpeAssocList ::= PpeAssoc
                              | SubCmpPpeAssocList SubCmpPpeAssocList
  
  syntax SubCmpRefinement ::= SubCmpId "refined" "to" CmpCategory SubCmpAssocDef ";"
 						  
  syntax UniCmpClassifierRef ::= UniCmpTypeRef
                               | UniCmpImplRef

  syntax ArrayDimensions ::= ArrayDimension
                           | ArrayDimensions ArrayDimensions
						   
  syntax ArrayDimension ::= "[" ArrayDimensionSize "]"
  syntax ArrayDimensionSize ::= Numeral 
                              | UniPpeConstantId  
							  | UniPpeId

  syntax ArrayElementImplListTmp ::= UniCmpImplRef ProtoTypeBindings
                                   | UniCmpImplRef

  syntax ArrayElementImplList ::= "(" ArrayElementImplListTmps ")"
  
  syntax ArrayElementImplListTmps ::= ArrayElementImplListTmp
                                    | ArrayElementImplListTmp "," ArrayElementImplListTmp
/* 
    defined in standard, but it's very strange that no relation with other definition 
    we move this definitions to commdef.k with nodef	
*/	
//  syntax ArraySelectionName ::= Id ArraySelection
//  syntax ArraySelection ::= ArraySelection ArraySelection
//  syntax ArraySelection ::= "[" SelectionRange "]"
//  syntax SelectionRange ::= Numeral | Numeral ".." Numeral
endmodule