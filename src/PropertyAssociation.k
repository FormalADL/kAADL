module PROPERTYASSOCIATION-SYNTAX

syntax PpeAssoc ::= UniPpeId "=>" "constant" Assignment InBinding ";"
		   |  UniPpeId "=>" "constant" Assignment  ";"
		   |  UniPpeId "=>"  Assignment InBinding ";"
		   |  UniPpeId "+=>" "constant" Assignment InBinding ";"
		   |  UniPpeId "+=>" "constant" Assignment  ";"
		   |  UniPpeId "+=>"  Assignment InBinding ";"
syntax UniPpeId ::=  PpeSetId "::" PpeNameId 

syntax ContainedPpeAssoc ::= UniPpeId "=>" "constant" Assignment "applies" "to" ContainedModelElementPathList InBinding ";"
			    |  UniPpeId "=>"  Assignment "applies" "to" ContainedModelElementPathList InBinding ";"
			    |  UniPpeId "=>" "constant" Assignment "applies" "to" ContainedModelElementPathList ";"
			    |  UniPpeId "=>"  Assignment "applies" "to" ContainedModelElementPathList ";"
syntax ContainedModelElementPathList ::= ContainedModelElementPath | ContainedModelElementPath "," ContainedModelElementPathList
syntax ContainedModelElementPath ::= AnnexPath 
				  |  ContainedModelElementList AnnexPath
				  |  ContainedModelElementList

syntax ContainedModelElementList ::= ContainedModelElement | ContainedModelElement "." ContainedModelElementList
syntax ContainedModelElement ::=  NamedElementId | NamedElementArraySelectionName

syntax AnnexPath ::= "annex" AnnexId "{**" AnnexSpecificPath "**}"
syntax AnnexSpecificPath ::= "defined by annex"

syntax Assignment ::= PpeValue | ModalPpeValue

syntax ModalPpeValue ::= PpeValue InModes 
		      |  PpeValue InModes "," ModalPpeValue 

syntax PpeValue ::= SinglePpeValue  |  PpeListValue
syntax SinglePpeValue ::= PpeExpression

syntax PpeListValue ::=  "("")"
		     |   "("PpeListValueMidSymbol")"
syntax PpeListValueMidSymbol ::= PpeListValue
			       | PpeExpression 
			       | PpeListValueMidSymbol "," PpeListValueMidSymbol

syntax InBinding ::= "in" "binding" PlatformClassifierRefList 
syntax PlatformClassifierRefList ::= PlatformClassifierRef | PlatformClassifierRef "," PlatformClassifierRefList

syntax PlatformClassifierRef ::= ProcessorUniCmpClassifierRef
			      |  VirtualProcessorUniCmpClassifierRef
                              |  BusUniCmpClassifierRef
                              |  VirtualBusUniCmpClassifierRef
                              |  MemoryUniCmpClassifierRef
syntax ProcessorUniCmpClassifierRef ::= NODEF
syntax VirtualProcessorUniCmpClassifierRef ::= NODEF
syntax VirtualBusUniCmpClassifierRef ::= NODEF
syntax MemoryUniCmpClassifierRef ::= NODEF
syntax NamedElementId ::= Id
syntax NamedElementArraySelectionName ::= NODEF

syntax BasicPpeAssoc ::= UniPpeId "=>" "constant" PpeValue ";"
                         | UniPpeId "=>"  PpeValue ";"
                         | UniPpeId "+=>" "constant" PpeValue ";"
                         | UniPpeId "+=>"  PpeValue ";"
						 

endmodule

module PROPERTYASSOCIATION
  
//  imports PROPERTYASSOCIATION-SYNTAX

endmodule