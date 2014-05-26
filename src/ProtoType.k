module PROTOTYPE-SYNTAX
  syntax ProtoType ::= ProtoTypeId ":" ProtoTypeDef ";"
                     | ProtoTypeId ":" ProtoTypeDef "{" ProtoTypePpeAssoc "}" ";"
  syntax ProtoTypeId ::= Id
  syntax ProtoTypeDef ::= CmpProtoType 
                        | FetGroupTypeProtoType
                        | FetProtoType

							 
  syntax CmpProtoType ::= CmpCategory
                        | CmpCategory "[]"
                        | CmpCategory UniCmpClassifierRef
                        | CmpCategory UniCmpClassifierRef "[]"
  
  syntax FetGroupTypeProtoType ::= "feature" "group" 
                                 | "feature" "group" UniFetGroupTypeRef

  syntax FetProtoType ::= "in" "feature" UniCmpClassifierRef
                        | "out" "feature" UniCmpClassifierRef
                        | "feature" UniCmpClassifierRef

  syntax ProtoTypeRefinement ::= ProtoTypeId ":" "refined" "to" ProtoTypeDef ";"
                               | ProtoTypeId ":" "refined" "to" ProtoTypeDef "{" ProtoTypePpeAssoc "}" ";"
							   
  syntax ProtoTypeBindings ::= "(" ProtoTypeBinding ")"
  syntax ProtoTypeBinding ::= ProtoTypeBinding "," ProtoTypeBinding
  
  syntax ProtoTypeBinding ::= ProtoTypeId "=>" CmpProtoTypeActual
                            | ProtoTypeId "=>" CmpProtoTypeActualList
                            | ProtoTypeId "=>" FetGroupTypeProtoTypeActual
                            | ProtoTypeId "=>" FetProtoTypeActual
							
  syntax CmpProtoTypeActual ::= CmpCategory UniCmpClassifierRef ProtoTypeBindings
                              | CmpCategory UniCmpClassifierRef
                              | CmpCategory ProtoTypeId
							  
  syntax CmpProtoTypeActuralListTmp ::= CmpProtoTypeActual
  syntax CmpProtoTypeActuralListTmp ::= CmpProtoTypeActual "," CmpProtoTypeActual
  syntax CmpProtoTypeActualList ::= "(" CmpProtoTypeActuralListTmp ")"
  
  syntax FetGroupTypeProtoTypeActual ::= "feature" "group" UniFetGroupTypeRef
                                       | "feature" "group" UniFetGroupTypeRef ProtoTypeBindings
                                       | "feature" "group" FetGroupTypeProtoTypeId
  syntax FetGroupTypeProtoTypeId ::= Id
  syntax FetProtoTypeActual ::= InOut EventData "port"
                              | InOut EventData "port" UniCmpClassifierRef
							  | Require BusDataSubprogram "access"
                              | Require BusDataSubprogram "access" UniCmpClassifierRef
							  | "in" "feature" FetProtoTypeId
                              | "out" "feature" FetProtoTypeId
							  
  syntax InOut ::= "in" | "out" | "in" "out"
  syntax EventData ::= "event" | "data" | "event" "data"
  syntax Require ::= "requires" | "provides"
  syntax BusDataSubprogram ::= "bus" | "data" | "subprogram" "group" | "subprogram"
  
endmodule