module SUBCOMPONENT-SYNTAX
// 4.5 check
  syntax Subcomponent ::= SubcomponentIdentifier ":" CmpCategory SubcomponentAssocDef ";"
    syntax SubcomponentIdentifier ::= Id
    syntax SubcomponentAssocDef ::= UniqueCmpClassifierReference ProtoTypeBindings
                 | UniqueCmpClassifierReference
                 | PrototypeIdentifier
                 | ArrayDimensions ArrayelementImplementionList
                 | ArrayDimensions
                 | "{" SubcomponentProtertyAssoc "}" // +
                 | "{" ContainedPpeAssoc "}"// +
                 | CmpInModes 
      syntax UniqueCmpClassifierReference ::= UniqueCmpTypeReference
                   |  UniqueCmpImplReference
      syntax PrototypeIdentifier ::= Id
      syntax ArrayDimensions ::= ArrayDimension // + but in 8.0,it is just [ArrayDimension]...i think here should be change
        syntax ArrayDimension ::= ArrayDimension ArrayDimension 
        syntax ArrayDimension ::= "[" ArrayDimensionSize "]"// [[...]]
          syntax ArrayDimensionSize ::= Numberal | UniquePpeConstantIdentifier  | UniquePpeIdentifier
            syntax Numberal ::= NODEF
      syntax ArrayelementImplementionList ::= "("ArrayelementImplementionListTmp")"
                    | "("ArrayelementImplementionListTmp "," ArrayelementImplementionListTmp ")"
        syntax ArrayelementImplementionListTmp ::= UniqueCmpImplReference ProtoTypeBindings
                        |  UniqueCmpImplReference
          syntax UniqueCmpImplReference ::= NODEF            
      syntax SubcomponentProtertyAssoc ::= SubcomponentProtertyAssoc SubcomponentProtertyAssoc
      syntax SubcomponentProtertyAssoc ::= NODEF
  syntax ArraySelectionName ::= Identifier ArraySelection
    syntax ArraySelection ::= ArraySelection ArraySelection // +
    syntax ArraySelection ::= "[" SelectionRange "]"
      syntax SelectionRange ::= Numberal | Numberal ".." Numberal
    
endmodule