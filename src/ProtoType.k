module PROTOTYPE-SYNTAX
  syntax ProtoType ::= ProtoTypeIdentifier ":" ProtoTypeAssocDefination ";"
  syntax ProtoTypeIdentifier ::= Id
  syntax ProtoTypeAssocDefination ::= ComponentProtoType ProtoTypePropertyAssociation 
              | FeatureGroupTypeProtoType ProtoTypePropertyAssociation
              | "{" FeatureProtoType ProtoTypePropertyAssociation "}"
  syntax ProtoTypePropertyAssociation ::= NoneStatement
  syntax ComponentProtoType ::= ComponentCategory UniqueComponentClassifierReference "[]" // i do not why "[]" is exist
  syntax ComponentProtoType ::= ComponentCategory UniqueComponentClassifierReference // [[]] ?

  syntax UniqueComponentClassifierReference ::= NoneStatement // because of '[...]'
  syntax FeatureGroupTypeProtoType ::= "feature" "group" | "feature" "group" UniqueFeatureGroupTypeReference

  syntax FeatureProtoType ::= "in" "feature" UniqueComponentClassifierReference
              | "out" "feature" UniqueComponentClassifierReference
              | "feature" UniqueComponentClassifierReference

  syntax ProtoTypeRefinement ::= ProtoTypeIdentifier ":" "refined " "to" ProtoTypeAssocDefination ";"
  syntax ProtoTypeBindings ::= "(" ProtoTypeBinding ")"
  syntax ProtoTypeBindings ::= "(" ProtoTypeBinding "," ProtoTypeBinding ")"
  syntax ProtoTypeBinding ::= ProtoTypeIdentifier "=>" ComponentProtoTypeActual
           |  ProtoTypeIdentifier "=>" ComponentProtoTypeActualList
           |  ProtoTypeIdentifier "=>" FeatureGroupTypeProtoTypeActual
           |  ProtoTypeIdentifier "=>" FeatureProtoTypeActual
  syntax ComponentProtoTypeActual ::= ComponentCategory UniqueComponentClassifierReference ProtoTypeBindings
                | ComponentCategory UniqueComponentClassifierReference
                | ComponentCategory ProtoTypeIdentifier
  syntax ComponentProtoTypeActualList ::= "(" ComponentProtoTypeActual ")"
  syntax ComponentProtoTypeActualList ::= "(" ComponentProtoTypeActual "," ComponentProtoTypeActual ")"
  syntax FeatureGroupTypeProtoTypeActual ::= "feature " "group" UniqueFeatureGroupTypeReference
                |   "feature " "group" UniqueFeatureGroupTypeReference ProtoTypeBindings
                |   "feature " "group" FeatureGroupTypeProtoTypeIdentifier
  syntax FeatureGroupTypeProtoTypeIdentifier ::= Id
  syntax FeatureProtoTypeActual ::= InOut EventData "port"
              | "requires" BusDataSubprogram "access"
              | InOut EventData "port" UniqueComponentClassifierReference
              | "requires" BusDataSubprogram "access" UniqueComponentClassifierReference
              | "in " "feature" FeatureProtoTypeIdentifier
              | "out" "feature" FeatureProtoTypeIdentifier
  syntax InOut ::= "in" | "out" | "in " "out"
  syntax EventData ::= "event" | "data" | "event " "data"
  syntax BusDataSubprogram ::= "bus" | "data" | "subprogram " "group" | "subprogram"

endmodule