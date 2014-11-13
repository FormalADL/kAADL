module AMBIGUITY

	syntax AmbIdPointId ::=  Id | Id MPoint Id 

	syntax AmbProcessorPointId ::= Mprocessor MPoint Id

	syntax AmbDoubleColonId ::= Id | Id MDoubleColon Id

	syntax AmbIdRoughArrowPpeValue ::= UniPpeId MRoughArrow PpeValue MSemicolon

	syntax AmbInverseOfUniFetGroupTypeRef ::= Minverse Mof UniFetGroupTypeRef 

	syntax IdBracketLeftIdBracketRight ::= Mclassifier MBracketLeft Id MBracketRight 

endmodule