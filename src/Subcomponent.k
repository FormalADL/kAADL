module SUBCOMPONENT-SYNTAX

syntax SubCmp ::= Id Mcolon CmpCategory SubCmpAssocDef MSemicolon 
			| Id Mcolon CmpCategory MSemicolon 
syntax SubCmpAssocDefElem ::= UniCmpClassifierRef 
			| UniCmpClassifierRef ProtoTypeBindings 
			| Id 
			| ArrayDimension
			| ArrayDimensions ArrayElementImplList 
			| MBraceLeft PpeContainedPpeAssocList MBraceRight 
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
			| MLeftBracket  MRightBracket
syntax ArrayDimensionSize ::= Numeral 
			| UniPpeConstantId 
		// 	| UniPpeId  // its defination same as UniPpeConstantId
syntax ArrayElementImplListTmp ::= UniCmpImplRef ProtoTypeBindings 
			| UniCmpImplRef 
syntax ArrayElementImplList ::= MBracketLeft ArrayElementImplListTmps MBracketRight 
syntax ArrayElementImplListTmps ::= ArrayElementImplListTmp 
			| ArrayElementImplListTmp MComma ArrayElementImplListTmps 
endmodule
