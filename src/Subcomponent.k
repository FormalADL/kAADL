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
			| AmbIdColonSubprogramIdSemicolon
			| AmbIdColonSubprogramIdPointIdSemicolon 
			| Id Mcolon Msubprogram Id MDoubleColon PkgName MSemicolon 
			| Id Mcolon Msubprogram PkgName MDoubleColon AmbIdPointId MSemicolon
			| Id Mcolon Msubprogram UniCmpClassifierRef ProtoTypeBindings MSemicolon 
			| Id Mcolon Msubprogram MLeftBracket ArrayDimensionSize MRightBracket MSemicolon 
			| Id Mcolon Msubprogram MLeftBracket MRightBracket MSemicolon 
			| Id Mcolon Msubprogram ArrayDimensions ArrayElementImplList MSemicolon 
			| Id Mcolon Msubprogram MBraceLeft PpeContainedPpeAssocList MBraceRight MSemicolon 
			| Id Mcolon Msubprogram CmpInModes MSemicolon 

syntax SubCmpAssocDefElem ::= AmbIdDoubleColonIdDoubleColonPkgName 
			| AmbPointId
			| PkgName MDoubleColon Id MPoint Id 
			| UniCmpClassifierRef ProtoTypeBindings 
			| AmbArrayDimensions 
			| ArrayDimensions ArrayElementImplList 
			| MBraceLeft ContainedPpeAssoc  MBraceRight 
			| MBraceLeft PpeAssoc PpeContainedPpeAssocList MBraceRight 
			| MBraceLeft ContainedPpeAssoc PpeContainedPpeAssocList MBraceRight
			| AmbBraceLeftPpeAssocBraceRight
syntax SubCmpAssocDefMid ::= SubCmpAssocDefElem 
			| SubCmpAssocDefElem SubCmpAssocDefMid 
			| Id SubCmpAssocDefMid
syntax SubCmpAssocDef ::= SubCmpAssocDefMid 
			| AmbOverlapPpeValueSubCmpAssocDefElem
			| SubCmpAssocDefMid  InModes
			| AmbOverlapPpeValueSubCmpAssocDefElem InModes 
			| SubCmpAssocDefMid  Min Mmodes MBracketLeft Id MRoughArrow Id MBracketRight
			| AmbOverlapPpeValueSubCmpAssocDefElem  Min Mmodes MBracketLeft Id MRoughArrow Id MBracketRight
			| SubCmpAssocDefMid  Min Mmodes MBracketLeft Id MRoughArrow Id MComma ModeNameList MBracketRight 	
			| AmbOverlapPpeValueSubCmpAssocDefElem  Min Mmodes MBracketLeft Id MRoughArrow Id MComma ModeNameList MBracketRight 

syntax SubCmpPpeAssocList ::= PpeAssoc 
			| PpeAssoc SubCmpPpeAssocList 
syntax SubCmpRefinement ::= Id Mrefined Mto CmpCategory SubCmpAssocDef MSemicolon 
syntax UniCmpClassifierRef ::= UniCmpTypeRef 
			| UniCmpImplRef 
syntax ArrayDimensions ::= AmbArrayDimensions 
			| MLeftBracket ArrayDimensionSize MRightBracket  ArrayDimensions 
			| MLeftBracket  MRightBracket ArrayDimensions

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
