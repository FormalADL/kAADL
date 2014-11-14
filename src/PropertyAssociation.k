module PROPERTYASSOCIATION-SYNTAX

syntax PpeAssoc ::= UniPpeId MRoughArrow Mconstant Assignment InBinding MSemicolon 
			| UniPpeId MRoughArrow Mconstant Assignment MSemicolon 
			| UniPpeId MRoughArrow Assignment InBinding MSemicolon 
			| UniPpeId MRoughArrow ModalPpeValue MSemicolon 
			| AmbIdRoughArrowPpeValue 
			| UniPpeId MPlusRoughArrow Mconstant Assignment InBinding MSemicolon 
			| UniPpeId MPlusRoughArrow Mconstant Assignment MSemicolon 
			| UniPpeId MPlusRoughArrow Assignment InBinding MSemicolon 
			| UniPpeId MPlusRoughArrow Assignment MSemicolon 
syntax UniPpeId ::= AmbDoubleColonId
syntax ContainedPpeAssoc ::= UniPpeId MRoughArrow Mconstant Assignment Mapplies Mto ContainedModelElementPathList InBinding MSemicolon 
			| UniPpeId MRoughArrow Assignment Mapplies Mto ContainedModelElementPathList InBinding MSemicolon 
			| UniPpeId MRoughArrow Mconstant Assignment Mapplies Mto ContainedModelElementPathList MSemicolon 
			| UniPpeId MRoughArrow Assignment Mapplies Mto ContainedModelElementPathList MSemicolon 
syntax ContainedModelElementPathList ::= ContainedModelElementPath 
			| ContainedModelElementPath MComma ContainedModelElementPathList 
syntax ContainedModelElementPath ::= AnnexPath 
			| ContainedModelElementList AnnexPath 
			| ContainedModelElementList 
syntax ContainedModelElementList ::= ContainedModelElement 
			| ContainedModelElement MPoint ContainedModelElementList 
syntax ContainedModelElement ::= Id 
			| NamedElementArraySelectionName 
syntax AnnexPath ::= Mannex Id MAsteriskBrace1 AnnexSpecificPath MAsteriskBrace2 
syntax AnnexSpecificPath ::= NODEF 
syntax Assignment ::= PpeValue 
			| ModalPpeValue 
syntax ModalPpeValue ::= PpeValue InModes 
			| PpeValue InModes MComma ModalPpeValue 
syntax PpeValue ::= SinglePpeValue 
			| PpeListValue 
syntax SinglePpeValue ::= PpeExpression 
syntax PpeListValue ::= MBracketLeft MBracketRight 
			| MBracketLeft PpeListValueMidSymbol MBracketRight 
syntax PpeListValueMidSymbol ::= PpeListValue 
			| PpeExpression 
			| PpeListValue MComma PpeListValueMidSymbol 
			| PpeExpression MComma PpeListValueMidSymbol
syntax InBinding ::= Min Mbinding MBracketLeft PlatformClassifierRefList MBracketRight 
syntax PlatformClassifierRefList ::= PlatformClassifierRef 
			| PlatformClassifierRef MComma PlatformClassifierRefList 
syntax PlatformClassifierRef ::= ProcessorUniCmpClassifierRef 
			| VirtualProcessorUniCmpClassifierRef 
			| AmbIdPointId
			| VirtualBusUniCmpClassifierRef 
			| MemoryUniCmpClassifierRef 
syntax ProcessorUniCmpClassifierRef ::= NODEF 
syntax VirtualProcessorUniCmpClassifierRef ::= NODEF 
syntax VirtualBusUniCmpClassifierRef ::= NODEF 
syntax MemoryUniCmpClassifierRef ::= NODEF 
syntax NamedElementArraySelectionName ::= NODEF 
syntax BasicPpeAssoc ::= UniPpeId MRoughArrow Mconstant PpeValue MSemicolon 
			| AmbIdRoughArrowPpeValue  
			| UniPpeId MPlusRoughArrow Mconstant PpeValue MSemicolon 
			| UniPpeId MPlusRoughArrow PpeValue MSemicolon 
endmodule
