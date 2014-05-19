module PROPERTYASSOCIATION-SYNTAX
// 11.3 check
  syntax PropertyAssociation ::= UniquePropertyIdentifier "=>" "constant" Assignment InBinding ";"
            |  UniquePropertyIdentifier "=>" "constant" Assignment  ";"
            |  UniquePropertyIdentifier "=>"  Assignment InBinding ";"
            |  UniquePropertyIdentifier "+=>" "constant" Assignment InBinding ";"
            |  UniquePropertyIdentifier "+=>" "constant" Assignment  ";"
            |  UniquePropertyIdentifier "+=>"  Assignment InBinding ";"
    syntax UniquePropertyIdentifier ::=  PropertySetIdentifier "::" PropertyNameIdentifier 
    syntax Assignment ::= PropertyValue | ModalPropertyValue
      syntax PropertyValue ::= SinglePropertyValue  |  PropertyListValue
        syntax SinglePropertyValue ::= PropertyExpression
          syntax PropertyExpression ::= NODEF
        syntax PropertyListValue ::=  NoneStatement  // funny
                | PropertyExpression
                | PropertyListValue "," PropertyListValue

      syntax ModalPropertyValue ::= PropertyValue InModes |  PropertyValue InModes "," ModalPropertyValue 
    syntax InBinding ::= "in ""binding " PlatformClassifierReferenceList 
      syntax PlatformClassifierReferenceList ::= PlatformClassifierReference | PlatformClassifierReference "," PlatformClassifierReferenceList
        syntax PlatformClassifierReference ::= ProcessorUniqueComponentClassifierReference
                    |  VirtualProcessorUniqueComponentClassifierReference
                    |  BusUniqueComponentClassifierReference
                    |  VirtualBusUniqueComponentClassifierReference
                    |  MemoryUniqueComponentClassifierReference
          syntax ProcessorUniqueComponentClassifierReference ::= NODEF
          syntax VirtualProcessorUniqueComponentClassifierReference ::= NODEF
          syntax VirtualBusUniqueComponentClassifierReference ::= NODEF
          syntax MemoryUniqueComponentClassifierReference ::= NODEF
  syntax ContainedPropertyAssociation ::= UniquePropertyIdentifier "=>" "constant" Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
               |  UniquePropertyIdentifier "=>"  Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
    syntax ContainedModelElementPathList ::= ContainedModelElementPath | ContainedModelElementPath "," ContainedModelElementPathList
      syntax ContainedModelElementPath ::= AnnexPath 
                |  ContainedModelElementList AnnexPath
                |  ContainedModelElementList
        syntax AnnexPath ::= "annex " AnnexIdentifier "{**" AnnexSpecificPath "**}"
          syntax AnnexSpecificPath ::= "defined by annex"
        syntax ContainedModelElementList ::= ContainedModelElement | ContainedModelElement "." ContainedModelElementList
          syntax ContainedModelElement ::=  NamedElementIdentifier | NamedElementArraySelectionName
            syntax NamedElementIdentifier ::= Id
            syntax NamedElementArraySelectionName ::= NODEF
endmodule

module PROPERTYASSOCIATION
  
  imports PROPERTYASSOCIATION-SYNTAX

endmodule