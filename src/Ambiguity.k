module AMBIGUITY

	syntax AmbIdPointId ::=  Id | Id MPoint Id 

	syntax AmbProcessorPointId ::= Mprocessor MPoint Id

	syntax AmbDoubleColonId ::= Id | Id MDoubleColon Id

	syntax AmbIdRoughArrowPpeValue ::= UniPpeId MRoughArrow PpeValue MSemicolon

	syntax AmbInverseOfUniFetGroupTypeRef ::= Minverse Mof Id
						| Minverse Mof Id MDoubleColon Id 
						| Minverse Mof Id MDoubleColon Id MDoubleColon Id 
	                       
	syntax AmbIdBracketLeftIdBracketRight ::= Mclassifier MBracketLeft Id MBracketRight 

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

endmodule