module PROTOTYPE-SYNTAX
  syntax ProtoType ::= ProtoTypeIdentifier ":" ProtoTypeAssocDef ";"
  syntax ProtoTypeIdentifier ::= Id
  syntax ProtoTypeAssocDef ::= CmpProtoType ProtoTypePpeAssoc 
              | FetGroupTypeProtoType ProtoTypePpeAssoc
              | "{" FetProtoType ProtoTypePpeAssoc "}"
  syntax ProtoTypePpeAssoc ::= NoneStatement
  syntax CmpProtoType ::= CmpCategory UniqueCmpClassifierReference "[]" // i do not why "[]" is exist
  syntax CmpProtoType ::= CmpCategory UniqueCmpClassifierReference // [[]] ?

  syntax UniqueCmpClassifierReference ::= NoneStatement // because of '[...]'
  syntax FetGroupTypeProtoType ::= "feature" "group" | "feature" "group" UniqueFetGroupTypeReference

  syntax FetProtoType ::= "in" "feature" UniqueCmpClassifierReference
              | "out" "feature" UniqueCmpClassifierReference
              | "feature" UniqueCmpClassifierReference

  syntax ProtoTypeRefinement ::= ProtoTypeIdentifier ":" "refined " "to" ProtoTypeAssocDef ";"
  syntax ProtoTypeBindings ::= "(" ProtoTypeBinding ")"
  syntax ProtoTypeBindings ::= "(" ProtoTypeBinding "," ProtoTypeBinding ")"
  syntax ProtoTypeBinding ::= ProtoTypeIdentifier "=>" CmpProtoTypeActual
           |  ProtoTypeIdentifier "=>" CmpProtoTypeActualList
           |  ProtoTypeIdentifier "=>" FetGroupTypeProtoTypeActual
           |  ProtoTypeIdentifier "=>" FetProtoTypeActual
  syntax CmpProtoTypeActual ::= CmpCategory UniqueCmpClassifierReference ProtoTypeBindings
                | CmpCategory UniqueCmpClassifierReference
                | CmpCategory ProtoTypeIdentifier
  syntax CmpProtoTypeActualList ::= "(" CmpProtoTypeActual ")"
  syntax CmpProtoTypeActualList ::= "(" CmpProtoTypeActual "," CmpProtoTypeActual ")"
  syntax FetGroupTypeProtoTypeActual ::= "feature " "group" UniqueFetGroupTypeReference
                |   "feature " "group" UniqueFetGroupTypeReference ProtoTypeBindings
                |   "feature " "group" FetGroupTypeProtoTypeIdentifier
  syntax FetGroupTypeProtoTypeIdentifier ::= Id
  syntax FetProtoTypeActual ::= InOut EventData "port"
              | "requires" BusDataSubprogram "access"
              | InOut EventData "port" UniqueCmpClassifierReference
              | "requires" BusDataSubprogram "access" UniqueCmpClassifierReference
              | "in " "feature" FetProtoTypeIdentifier
              | "out" "feature" FetProtoTypeIdentifier
  syntax InOut ::= "in" | "out" | "in " "out"
  syntax EventData ::= "event" | "data" | "event " "data"
  syntax BusDataSubprogram ::= "bus" | "data" | "subprogram " "group" | "subprogram"

endmodule