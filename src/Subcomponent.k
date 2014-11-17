module SUBCOMPONENT-SYNTAX

syntax SubCmp ::= AmbIdColonCmpCategorySemicolon 
			| Id Mcolon AbstractCmpCategory SubCmpAssocDef MSemicolon 
			| Id Mcolon ExecPlateformCategory SubCmpAssocDef MSemicolon 
			| Id Mcolon CompositeCategory SubCmpAssocDef MSemicolon 
			| Id Mcolon Mdata SubCmpAssocDef MSemicolon 
			| Id Mcolon Msubprogram Mgroup SubCmpAssocDef MSemicolon 
			| Id Mcolon Mthread  SubCmpAssocDef MSemicolon 
			| Id Mcolon Mthread Mgroup SubCmpAssocDef MSemicolon 
			| Id Mcolon Mprocess SubCmpAssocDef MSemicolon 
			| Id Mcolon Msubprogram SubCmpAssocDefElem SubCmpAssocDef MSemicolon 
			| Id Mcolon Msubprogram UniCmpClassifierRef MSemicolon 
			| Id Mcolon Msubprogram UniCmpClassifierRef ProtoTypeBindings MSemicolon 
			| Id Mcolon Msubprogram ArrayDimension MSemicolon 
			| Id Mcolon Msubprogram ArrayDimensions ArrayElementImplList MSemicolon 
			| Id Mcolon Msubprogram MBraceLeft PpeContainedPpeAssocList MBraceRight MSemicolon 
			| Id Mcolon Msubprogram CmpInModes MSemicolon 
//			| AmbIdColonSubprogramIdSemicolon 
 


syntax SubCmpAssocDefElem ::= UniCmpClassifierRef 
			| UniCmpClassifierRef ProtoTypeBindings 
			| Id 
			| ArrayDimension
			| ArrayDimensions ArrayElementImplList 
			| CmpInModes 
			| MBraceLeft ContainedPpeAssoc  MBraceRight 
			| MBraceLeft PpeAssoc PpeContainedPpeAssocList MBraceRight 
			| MBraceLeft ContainedPpeAssoc PpeContainedPpeAssocList MBraceRight
			| AmbBraceLeftPpeAssocBraceRight


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



syntax ArrayElementImplList ::= MBracketLeft ArrayElementImplListTmp MComma ArrayElementImplListTmps MBracketRight 
			|  MBracketLeft UniCmpImplRef ProtoTypeBindings MBracketRight 
			|  MBracketLeft PkgName MDoubleColon CmpImplName MBracketRight 
			|  MBracketLeft Id MPoint Id MBracketRight 
			|  AmbBracketLeftIdBracketRight 


syntax ArrayElementImplListTmps ::= ArrayElementImplListTmp 
			| ArrayElementImplListTmp MComma ArrayElementImplListTmps 
endmodule
