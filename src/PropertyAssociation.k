module PROPERTYASSOCIATION-SYNTAX
// 11.3 check
  syntax PpeAssoc ::= UniquePpeIdentifier "=>" "constant" Assignment InBinding ";"
            |  UniquePpeIdentifier "=>" "constant" Assignment  ";"
            |  UniquePpeIdentifier "=>"  Assignment InBinding ";"
            |  UniquePpeIdentifier "+=>" "constant" Assignment InBinding ";"
            |  UniquePpeIdentifier "+=>" "constant" Assignment  ";"
            |  UniquePpeIdentifier "+=>"  Assignment InBinding ";"
    syntax UniquePpeIdentifier ::=  PpeSetIdentifier "::" PpeNameIdentifier 
    syntax Assignment ::= PpeValue | ModalPpeValue
      syntax PpeValue ::= SinglePpeValue  |  PpeListValue
        syntax SinglePpeValue ::= PpeExpression
          syntax PpeExpression ::= NODEF
        syntax PpeListValue ::=  NoneStatement  // funny
                | PpeExpression
                | PpeListValue "," PpeListValue

      syntax ModalPpeValue ::= PpeValue InModes |  PpeValue InModes "," ModalPpeValue 
    syntax InBinding ::= "in ""binding " PlatformClassifierRefList 
      syntax PlatformClassifierRefList ::= PlatformClassifierRef | PlatformClassifierRef "," PlatformClassifierRefList
        syntax PlatformClassifierRef ::= ProcessorUniqueCmpClassifierRef
                    |  VirtualProcessorUniqueCmpClassifierRef
                    |  BusUniqueCmpClassifierRef
                    |  VirtualBusUniqueCmpClassifierRef
                    |  MemoryUniqueCmpClassifierRef
          syntax ProcessorUniqueCmpClassifierRef ::= NODEF
          syntax VirtualProcessorUniqueCmpClassifierRef ::= NODEF
          syntax VirtualBusUniqueCmpClassifierRef ::= NODEF
          syntax MemoryUniqueCmpClassifierRef ::= NODEF
  syntax ContainedPpeAssoc ::= UniquePpeIdentifier "=>" "constant" Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
               |  UniquePpeIdentifier "=>"  Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
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
  
//  imports PROPERTYASSOCIATION-SYNTAX

endmodule