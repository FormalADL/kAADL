module AMBIGUITY

	syntax AmbIdPointId ::=  Id | AmbPointId
	
	syntax AmbPointId ::= Id MPoint Id

	syntax AmbProcessorPointId ::= Mprocessor MPoint Id

	syntax AmbDoubleColonId ::= Id | AmbIdDoubleColonId 
	syntax AmbIdDoubleColonId ::= Id MDoubleColon Id

	syntax AmbIdRoughArrowPpeValue ::= UniPpeId MRoughArrow PpeValue MSemicolon
						| UniPpeId MRoughArrow AmbOverlapPpeValueSubCmpAssocDefElem MSemicolon

	syntax AmbInverseOfUniFetGroupTypeRef ::= Minverse Mof Id
						| Minverse Mof Id MDoubleColon Id 
						| Minverse Mof Id MDoubleColon Id MDoubleColon Id 
	                       
//	syntax AmbIdBracketLeftIdBracketRight ::= Mclassifier MBracketLeft Id MBracketRight 

	syntax AmbReferenceBracketLeftIdBracketRight ::= Mreference MBracketLeft Id MBracketRight

	syntax AmbIdColonSubprogramIdSemicolon ::= Id Mcolon Msubprogram Id MSemicolon 

	syntax AmbIdColonCmpCategorySemicolon ::=  Id Mcolon CmpCategory MSemicolon  // here need unfold CmpCategory

	syntax AmbArrowsIdArrowsSubCmpFlowId ::= MArrows Id MArrows Id
						| MArrows Id MArrows Id MPoint Id
	
	syntax AmbFeatureGroupUniFetGroupTypeRef ::=  Mfeature Mgroup Id
			| Mfeature Mgroup Id  MDoubleColon Id 
			| Mfeature Mgroup Id  MDoubleColon Id MDoubleColon Id 
	
	syntax AmbInModesBracketLeftIdBracketRight ::= Min Mmodes MBracketLeft Id MBracketRight

	syntax AmbClassifierBracketLeftIdBracketRight ::= Mclassifier MBracketLeft Id MBracketRight 

        syntax AmbSignedAadlintegerOrConstantDoubleDiontSignedAadlintegerOrConstant ::= SignedAadlintegerOrConstant MDoubleDiont SignedAadlintegerOrConstant 

	syntax AmbBracketLeftIdBracketRight ::= MBracketLeft Id MBracketRight

	syntax  AmbBracketLeftBooleanTermBracketRight ::= MBracketLeft BooleanValue MBracketRight
						| MBracketLeft Mnot BooleanTerm MBracketRight
						| MBracketLeft BooleanTerm Mor BooleanTerm Mand BooleanTerm MBracketRight
						| MBracketLeft MBracketLeft BooleanTerm MBracketRight MBracketRight
						| MBracketLeft Id MDoubleColon Id MBracketRight
						| AmbBracketLeftIdBracketRight 

	syntax AmbCmpCategoryUniCmpClassifierRef ::= CmpCategory UniCmpClassifierRef 


syntax AmbBraceLeftPpeAssocBraceRight ::= MBraceLeft PpeAssoc MBraceRight // need unfold

syntax AmbEndToEndFlowSpecAssocDefaultPpeInMode ::= MBraceLeft PpeAssocList MBraceRight InModesAndTransitions 
						| InModesAndTransitions
						| MBraceLeft PpeAssoc PpeAssocList MBraceRight 
						| AmbBraceLeftPpeAssocBraceRight   

syntax AmbIdColonSubprogramIdPointIdSemicolon ::= Id Mcolon Msubprogram Id MPoint Id MSemicolon| AmbBraceLeftPpeAssocBraceRight   


 syntax AmbOverlapPpeValueSubCmpAssocDefElem ::= AmbDoubleColonId
						| MBracketLeft MBracketRight


syntax AmbArrayDimensions ::=  MLeftBracket ArrayDimensionSize MRightBracket
			| MLeftBracket MRightBracket

syntax AmbIdDoubleColonIdDoubleColonPkgName::= Id  MDoubleColon Id MDoubleColon PkgName 
endmodule