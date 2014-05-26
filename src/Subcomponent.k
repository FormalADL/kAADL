module SUBCOMPONENT-SYNTAX
  syntax SubCmp ::= SubCmpId ":" CmpCategory SubCmpAssocDef ";"
  syntax SubCmpId ::= Id
  syntax SubCmpAssocDef ::= UniCmpClassifierRef 
                          | UniCmpClassifierRef ProtoTypeBindings
                          | ProtoTypeId
                          | ArrayDimensions 
                          | ArrayDimensions ArrayElementImplList
                          | "{" SubCmpPpeAssoc "}"
                          | "{" ContainedPpeAssoc "}"
                          | CmpInModes 
/*
  subcomponent_refine is defined in component extension.
*/						  
//  syntax SubCmpRefinement ::= SubCmpId "refined" "to" CmpCategory SubCmpAssocDef ";"
 						  
  syntax UniCmpClassifierRef ::= UniCmpTypeRef
                               | UniCmpImplRef

  syntax ArrayDimensions ::= ArrayDimension
                           | ArrayDimensions ArrayDimensions
  syntax ArrayDimension ::= "[" ArrayDimensionSize "]"
  syntax ArrayDimensionSize ::= Numeral 
                              | UniPpeConstantId  
							  | UniPpeId

  syntax ArrayElementImplList ::= "(" ArrayElementImplListTmp ")"
                                | "(" ArrayElementImplListTmp "," ArrayElementImplListTmp ")"
  syntax ArrayElementImplListTmp ::= UniCmpImplRef ProtoTypeBindings
                                   | UniCmpImplRef

/* 
    defined in standard, but no relation with other definition  
*/	
//  syntax ArraySelectionName ::= Id ArraySelection
//  syntax ArraySelection ::= ArraySelection ArraySelection
//  syntax ArraySelection ::= "[" SelectionRange "]"
//  syntax SelectionRange ::= Numeral | Numeral ".." Numeral
endmodule