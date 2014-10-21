module SUBCOMPONENT-SYNTAX

syntax SubCmp ::= Id Mcolon CmpCategory SubCmpAssocDef MSemicolon 
			| Id Mcolon CmpCategory MSemicolon 
syntax SubCmpAssocDefElem ::= UniCmpClassifierRef 
			| UniCmpClassifierRef ProtoTypeBindings 
			| Id 
			| ArrayDimensions 
			| ArrayDimensions ArrayElementImplList 
			| MBraceLeft SubCmpPpeAssocList MBraceRight 
			| MBraceLeft ContainedPpeAssocList MBraceRight 
			| CmpInModes 
syntax SubCmpAssocDef ::= SubCmpAssocDefElem 
			| SubCmpAssocDefElem SubCmpAssocDef 
syntax SubCmpPpeAssocList ::= PpeAssoc 
			| PpeAssoc SubCmpPpeAssocList 
syntax SubCmpRefinement ::= Id Mrefined Mto CmpCategory SubCmpAssocDef MSemicolon 
syntax UniCmpClassifierRef ::= UniCmpTypeRef 
			| UniCmpImplRef 
syntax ArrayDimensions ::= ArrayDimension 
			| ArrayDimension ArrayDimensions 
syntax ArrayDimension ::= MLeftBracket ArrayDimensionSize MRightBracket 
syntax ArrayDimensionSize ::= Numeral 
			| UniPpeConstantId 
			| UniPpeId 
syntax ArrayElementImplListTmp ::= UniCmpImplRef ProtoTypeBindings 
			| UniCmpImplRef 
syntax ArrayElementImplList ::= MBracketLeft ArrayElementImplListTmps MBracketRight 
syntax ArrayElementImplListTmps ::= ArrayElementImplListTmp 
			| ArrayElementImplListTmp MComma ArrayElementImplListTmp 
endmodule
