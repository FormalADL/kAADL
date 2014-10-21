module SUBCOMPONENT-SYNTAX

syntax SubCmp ::= Id Mcolon CmpCategory SubCmpAssocDef MSemicolon 
			| Id Mcolon CmpCategory MSemicolon 
syntax SubCmpAssocDef ::= UniCmpClassifierRef 
			| UniCmpClassifierRef ProtoTypeBindings 
			| Id 
			| ArrayDimensions 
			| ArrayDimensions ArrayElementImplList 
			| MBraceLeft SubCmpPpeAssocList MBraceRight 
			| MBraceLeft ContainedPpeAssocList MBraceRight 
			| CmpInModes 
			| SubCmpAssocDef SubCmpAssocDef 
syntax SubCmpPpeAssocList ::= PpeAssoc 
			| SubCmpPpeAssocList SubCmpPpeAssocList 
syntax SubCmpRefinement ::= Id Mrefined Mto CmpCategory SubCmpAssocDef MSemicolon 
syntax UniCmpClassifierRef ::= UniCmpTypeRef 
			| UniCmpImplRef 
syntax ArrayDimensions ::= ArrayDimension 
			| ArrayDimensions ArrayDimensions 
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
