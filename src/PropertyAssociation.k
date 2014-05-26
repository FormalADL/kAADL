module PROPERTYASSOCIATION-SYNTAX
// 11.3 check
  syntax PpeAssoc ::= UniPpeId "=>" "constant" Assignment InBinding ";"
            |  UniPpeId "=>" "constant" Assignment  ";"
            |  UniPpeId "=>"  Assignment InBinding ";"
            |  UniPpeId "+=>" "constant" Assignment InBinding ";"
            |  UniPpeId "+=>" "constant" Assignment  ";"
            |  UniPpeId "+=>"  Assignment InBinding ";"
    syntax UniPpeId ::=  PpeSetId "::" PpeNameId 
    syntax Assignment ::= PpeValue | ModalPpeValue
      syntax PpeValue ::= SinglePpeValue  |  PpeListValue
        syntax SinglePpeValue ::= PpeExpression
          syntax PpeExpression ::= NODEF
        syntax PpeListValue ::=  NoneStatement  // funny
                | PpeExpression
                | PpeListValue "," PpeListValue

      syntax ModalPpeValue ::= PpeValue InModes |  PpeValue InModes "," ModalPpeValue 
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
  syntax ContainedPpeAssoc ::= UniPpeId "=>" "constant" Assignment "applies" "to" ContainedModelElementPathList InBinding ";"
               |  UniPpeId "=>"  Assignment "applies" "to" ContainedModelElementPathList InBinding ";"
    syntax ContainedModelElementPathList ::= ContainedModelElementPath | ContainedModelElementPath "," ContainedModelElementPathList
      syntax ContainedModelElementPath ::= AnnexPath 
                |  ContainedModelElementList AnnexPath
                |  ContainedModelElementList
        syntax AnnexPath ::= "annex" AnnexId "{**" AnnexSpecificPath "**}"
        syntax AnnexSpecificPath ::= "defined by annex"
        syntax ContainedModelElementList ::= ContainedModelElement | ContainedModelElement "." ContainedModelElementList
          syntax ContainedModelElement ::=  NamedElementId | NamedElementArraySelectionName
            syntax NamedElementId ::= Id
            syntax NamedElementArraySelectionName ::= NODEF
endmodule

module PROPERTYASSOCIATION
  
//  imports PROPERTYASSOCIATION-SYNTAX

endmodule