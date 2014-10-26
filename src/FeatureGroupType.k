module FEATUREGROUPTYPE-SYNATX

syntax FetGroupType ::= Mfeature Mgroup Id Mend Id MSemicolon 
			| Mfeature Mgroup Id FetGroupTypeAssocDef Mend Id MSemicolon 
syntax FetGroupTypeAssocDefElem ::= Mprototypes ProtoTypeList 
			| Mprototypes NoneStatement 
			| Mfeatures FeatureList 
			| Minverse Mof UniFetGroupTypeRef 
			| Mproperties FetGroupContainedPpeAssocList 
			| Mproperties NoneStatement 
			| AnnexSubclauseList 
syntax FetGroupTypeAssocDef ::= FetGroupTypeAssocDefElem 
			| FetGroupTypeAssocDefElem FetGroupTypeAssocDef 
syntax FetGroupContainedPpeAssocList ::= ContainedPpeAssoc 
			| ContainedPpeAssoc FetGroupContainedPpeAssocList 
syntax AnnexSubclauseList ::= AnnexSubclause 
			| AnnexSubclause AnnexSubclauseList 
syntax FetGroupTypeExt ::= Mfeature Mgroup Id Mextends UniFetGroupTypeRef Mend Id MSemicolon 
			| Mfeature Mgroup Id Mextends UniFetGroupTypeRef ProtoTypeBindings Mend Id MSemicolon 
			| Mfeature Mgroup Id Mextends UniFetGroupTypeRef FetGroupTypeExtAssocDef Mend Id MSemicolon 
			| Mfeature Mgroup Id Mextends UniFetGroupTypeRef ProtoTypeBindings FetGroupTypeExtAssocDef Mend Id MSemicolon 
syntax FetGroupTypeExtAssocDefElem ::= Mprototypes ProtoTypeList 
			| Mprototypes ProtoTypeRefinementList 
			| Mprototypes NoneStatement 
			| Mfeatures FeatureList 
			| Mfeatures FetRefinementList 
			| Minverse Mof UniFetGroupTypeRef 
			| Mproperties FetGroupContainedPpeAssocList 
			| Mproperties NoneStatement 
			| AnnexSubclauseList 
syntax FetGroupTypeExtAssocDef ::= FetGroupTypeExtAssocDefElem 
			| FetGroupTypeExtAssocDefElem FetGroupTypeExtAssocDef 
syntax FetRefinementList ::= FetRefinement 
			| FetRefinement FetRefinementList 
syntax FetGroupSpec ::= Id Mcolon FetGroupSpecAssocDef 
syntax FetGroupSpecAssocDef ::= Min Mfeature Mgroup InverseOfUniProtoType 
			| Mout Mfeature Mgroup InverseOfUniProtoType 
			| Mfeature Mgroup InverseOfUniProtoType 
syntax InverseOfUniProtoType ::= Minverse Mof UniFetGroupTypeRef 
		//	| Minverse Mof Id 
			| UniFetGroupTypeRef 
		//	| Id 
syntax FetGroupRefinement ::= Id Mcolon Mrefined Mto FetGroupSpecAssocDef 
syntax UniFetGroupTypeRef ::= Id 
			| PkgName MDoubleColon Id 
endmodule
