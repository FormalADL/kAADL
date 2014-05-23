module PROTOTYPE-SYNTAX
  syntax ProtoType ::= ProtoTypeIdentifier ":" ProtoTypeAssocDef ";"
  syntax ProtoTypeIdentifier ::= Id
  syntax ProtoTypeAssocDef ::= CmpProtoType ProtoTypePpeAssoc 
              | FetGroupTypeProtoType ProtoTypePpeAssoc
              | "{" FetProtoType ProtoTypePpeAssoc "}"
  syntax ProtoTypePpeAssoc ::= NoneStatement
  syntax CmpProtoType ::= CmpCategory UniqueCmpClassifierRef "[]" // i do not why "[]" is exist
  syntax CmpProtoType ::= CmpCategory UniqueCmpClassifierRef // [[]] ?

  syntax UniqueCmpClassifierRef ::= NoneStatement // because of '[...]'
  syntax FetGroupTypeProtoType ::= "feature" "group" | "feature" "group" UniqueFetGroupTypeRef

  syntax FetProtoType ::= "in" "feature" UniqueCmpClassifierRef
                        | "out" "feature" UniqueCmpClassifierRef
                        | "feature" UniqueCmpClassifierRef

  syntax ProtoTypeRefinement ::= ProtoTypeIdentifier ":" "refined " "to" ProtoTypeAssocDef ";"
  syntax ProtoTypeBindings ::= "(" ProtoTypeBinding ")"
  syntax ProtoTypeBindings ::= "(" ProtoTypeBinding "," ProtoTypeBinding ")"
  syntax ProtoTypeBinding ::= ProtoTypeIdentifier "=>" CmpProtoTypeActual
                            | ProtoTypeIdentifier "=>" CmpProtoTypeActualList
                            | ProtoTypeIdentifier "=>" FetGroupTypeProtoTypeActual
                            | ProtoTypeIdentifier "=>" FetProtoTypeActual
  syntax CmpProtoTypeActual ::= CmpCategory UniqueCmpClassifierRef ProtoTypeBindings
                              | CmpCategory UniqueCmpClassifierRef
                              | CmpCategory ProtoTypeIdentifier
  syntax CmpProtoTypeActualList ::= "(" CmpProtoTypeActual ")"
  syntax CmpProtoTypeActualList ::= "(" CmpProtoTypeActual "," CmpProtoTypeActual ")"
  syntax FetGroupTypeProtoTypeActual ::= "feature " "group" UniqueFetGroupTypeRef
                                       | "feature " "group" UniqueFetGroupTypeRef ProtoTypeBindings
                                       | "feature " "group" FetGroupTypeProtoTypeIdentifier
  syntax FetGroupTypeProtoTypeIdentifier ::= Id
  syntax FetProtoTypeActual ::= InOut EventData "port"
                              | "requires" BusDataSubprogram "access"
                              | InOut EventData "port" UniqueCmpClassifierRef
                              | "requires" BusDataSubprogram "access" UniqueCmpClassifierRef
                              | "in " "feature" FetProtoTypeIdentifier
                              | "out" "feature" FetProtoTypeIdentifier
  syntax InOut ::= "in" | "out" | "in " "out"
  syntax EventData ::= "event" | "data" | "event " "data"
  syntax BusDataSubprogram ::= "bus" | "data" | "subprogram " "group" | "subprogram"

endmodule