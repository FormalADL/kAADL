module AMBIGUITY

	syntax AmbIdPointId ::=  Id | Id MPoint Id 

	syntax AmbProcessorPointId ::= Mprocessor MPoint Id

	syntax AmbDoubleColonId ::= Id | Id MDoubleColon Id

	syntax AmbIdRoughArrowPpeValue ::= UniPpeId MRoughArrow PpeValue MSemicolon

	syntax AmbInverseOfUniFetGroupTypeRef ::= Minverse Mof Id
						| Minverse Mof Id MDoubleColon Id 
						| Minverse Mof Id MDoubleColon Id MDoubleColon Id 
	/*
	syntax UniFetGroupTypeRef ::= Id 
			| PkgName MDoubleColon Id 
	*/
	                       

	syntax AmbIdBracketLeftIdBracketRight ::= Mclassifier MBracketLeft Id MBracketRight 

	syntax AmbReferenceBracketLeftIdBracketRight ::= Mreference MBracketLeft Id MBracketRight

endmodule