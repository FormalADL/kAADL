module SUBCOMPONENT-SYNTAX
  syntax SubCmp ::= SubCmpIdentifier ":" CmpCategory SubCmpAssocDef ";"
  syntax SubCmpIdentifier ::= Id
  syntax SubCmpAssocDef ::= UniqueCmpClassifierRef 
                          | UniqueCmpClassifierRef ProtoTypeBindings
                          | PrototypeIdentifier
                          | ArrayDimensions 
                          | ArrayDimensions ArrayelementImplementionList
                          | "{" SubCmpPpeAssoc "}"
                          | "{" ContainedPpeAssoc "}"
                          | CmpInModes 
  syntax UniqueCmpClassifierRef ::= UniqueCmpTypeRef
                                  | UniqueCmpImplRef
  syntax PrototypeIdentifier ::= Id
  syntax ArrayDimensions ::= ArrayDimension // + but in 8.0,it is just [ArrayDimension]...i think here should be change
  syntax ArrayDimension ::= ArrayDimension ArrayDimension 
  syntax ArrayDimension ::= "[" ArrayDimensionSize "]"
  syntax Numberal ::= Int 
  syntax ArrayDimensionSize ::= Numberal | UniquePpeConstantIdentifier  | UniquePpeIdentifier

  syntax ArrayelementImplementionList ::= "("ArrayelementImplementionListTmp")"
                    | "("ArrayelementImplementionListTmp "," ArrayelementImplementionListTmp ")"
  syntax ArrayelementImplementionListTmp ::= UniqueCmpImplRef ProtoTypeBindings
                        |  UniqueCmpImplRef
         
  syntax SubCmpPpeAssoc ::= SubCmpPpeAssoc SubCmpPpeAssoc
  syntax ArraySelectionName ::= Identifier ArraySelection
  syntax ArraySelection ::= ArraySelection ArraySelection
  syntax ArraySelection ::= "[" SelectionRange "]"
  syntax SelectionRange ::= Numberal | Numberal ".." Numberal
endmodule