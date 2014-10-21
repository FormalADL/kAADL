module FEATUREGROUPTYPE-SYNATX

syntax FetGroupType ::= Mfeature Mgroup Id Mend Id MSemicolon 
			| Mfeature Mgroup Id FetGroupTypeAssocDef Mend Id MSemicolon 
syntax FetGroupTypeAssocDef ::= Mprototypes ProtoTypeList 
			| Mprototypes NoneStatement 
			| Mfeatures FeatureList 
			| Minverse Mof UniFetGroupTypeRef 
			| Mproperties FetGroupContainedPpeAssocList 
			| Mproperties NoneStatement 
			| AnnexSubclauseList 
syntax FetGroupTypeAssocDef ::= FetGroupTypeAssocDef FetGroupTypeAssocDef 
syntax FetGroupContainedPpeAssocList ::= ContainedPpeAssoc 
			| FetGroupContainedPpeAssocList FetGroupContainedPpeAssocList 
syntax AnnexSubclauseList ::= AnnexSubclause 
			| AnnexSubclauseList AnnexSubclauseList 
syntax FetGroupTypeExt ::= Mfeature Mgroup Id Mextends UniFetGroupTypeRef Mend Id MSemicolon 
			| Mfeature Mgroup Id Mextends UniFetGroupTypeRef ProtoTypeBindings Mend Id MSemicolon 
			| Mfeature Mgroup Id Mextends UniFetGroupTypeRef FetGroupTypeExtAssocDef Mend Id MSemicolon 
			| Mfeature Mgroup Id Mextends UniFetGroupTypeRef ProtoTypeBindings FetGroupTypeExtAssocDef Mend Id MSemicolon 
syntax FetGroupTypeExtAssocDef ::= Mprototypes ProtoTypeList 
			| Mprototypes ProtoTypeRefinementList 
			| Mprototypes NoneStatement 
			| Mfeatures FeatureList 
			| Mfeatures FetRefinementList 
			| Minverse Mof UniFetGroupTypeRef 
			| Mproperties FetGroupContainedPpeAssocList 
			| Mproperties NoneStatement 
			| AnnexSubclauseList 
syntax FetGroupTypeExtAssocDef ::= FetGroupTypeExtAssocDef FetGroupTypeExtAssocDef 
syntax FetRefinementList ::= FetRefinement 
			| FetRefinementList FetRefinementList 
syntax FetGroupSpec ::= Id Mcolon FetGroupSpecAssocDef 
syntax FetGroupSpecAssocDef ::= Min Mfeature Mgroup InverseOfUniProtoType 
			| Mout Mfeature Mgroup InverseOfUniProtoType 
			| Mfeature Mgroup InverseOfUniProtoType 
syntax InverseOfUniProtoType ::= Minverse Mof UniFetGroupTypeRef 
			| Minverse Mof Id 
			| UniFetGroupTypeRef 
			| Id 
syntax FetGroupRefinement ::= Id Mcolon Mrefined Mto FetGroupSpecAssocDef 
syntax UniFetGroupTypeRef ::= Id 
			| PkgName MDoubleColon Id 
endmodule
