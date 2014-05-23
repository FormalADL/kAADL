module FEATUREGROUPTYPE-SYNATX
// 8.2 check
  syntax FetGroupType ::= "feature" "group" Identifier FetGroupTypeAssocDef KeyEnd Identifier ";"
     syntax FetGroupTypeAssocDef ::= ProtoTypeOfFetGroupType FetOfFetGroupType InverseOfFetGroupType PpeOfFetGroupType AnnexOfFetGroupType
      syntax ProtoTypeOfFetGroupType ::= "prototypes" ProtoTypeOfFetGroupTypeTmp 
                  | NoneStatement
        syntax ProtoTypeOfFetGroupTypeTmp ::= ProtoType
                    | ProtoType ProtoTypeOfFetGroupTypeTmp 
      syntax FetOfFetGroupType ::= "featrues" FetOfFetGroupTypeTmp
                 |  NoneStatement
        syntax FetOfFetGroupTypeTmp ::= Fet
                     |  Fet FetOfFetGroupTypeTmp
      syntax InverseOfFetGroupType ::= "inverse" "of" UniqueFetGroupTypeReference
                      |   NoneStatement
        syntax UniqueFetGroupTypeReference ::= FetGroupTypeReferenceIdentifier
              |  PkgName "::" FetGroupTypeReferenceIdentifier
          syntax FetGroupTypeReferenceIdentifier ::= NODEF
      syntax PpeOfFetGroupType ::= "properties" PpeOfFetGroupTypeTmp
        syntax PpeOfFetGroupTypeTmp ::= FetGroupContainedPpeAssoc
                      |  FetGroupContainedPpeAssoc PpeOfFetGroupTypeTmp
                      |  NoneStatement
          syntax FetGroupContainedPpeAssoc ::= NODEF
      syntax AnnexOfFetGroupType ::= NODEF
  syntax FetGroupTypeExt ::= "feature" "group" Identifier "extends" UniqueFetGroupTypeReference FetGroupTypeExtAssocDef KeyEnd Identifier ";"  
    syntax FetGroupTypeExtAssocDef ::= ProtoTypeBindings ProtoTypeOfFetGroupTypeExt FetOfFetGroupTypeExt InverseOfFetGroupTypeExt PpeOfFetGroupTypeExt AnnexOfFetGroupTypeExt 
      syntax  ProtoTypeOfFetGroupTypeExt ::=  "prototypes" ProtoTypeOfFetGroupTypeExtTmp
        syntax ProtoTypeOfFetGroupTypeExtTmp ::= ProtoTypeList
                    |  ProtoTypeRefinementList
                    | NoneStatement
          syntax ProtoTypeList ::= ProtoType | ProtoType ProtoTypeList
          syntax ProtoTypeRefinementList ::= ProtoTypeRefinement | ProtoTypeRefinement ProtoTypeRefinementList
      syntax  FetOfFetGroupTypeExt ::= "features" FetOfFetGroupTypeExtTmp
        syntax FetOfFetGroupTypeExtTmp ::= FetList | FetRefinementList | NoneStatement
          syntax FetList ::= Fet | Fet FetList
          syntax FetRefinementList ::= FetRefinement | FetRefinement FetRefinementList
      syntax  InverseOfFetGroupTypeExt  ::= InverseOfFetGroupType // they have the same syntax
      syntax  PpeOfFetGroupTypeExt ::= PpeOfFetGroupType
      syntax  AnnexOfFetGroupTypeExt ::= NoneStatement
                   | AnnexSubclause 
                   | AnnexSubclause AnnexOfFetGroupTypeExt

  syntax FetGroupSpec ::= FetGroupIdentifier ":" FetGroupSpecAssocDef 
    syntax FetGroupSpecAssocDef ::= InOut "feature" "group" InverseOfUniqueProtoType
      syntax InverseOfUniqueProtoType ::= "inverse" "of" UniqueFetGroupTypeReference
                | "inverse" "of" ProtoTypeIdentifier
                | UniqueFetGroupTypeReference
                | ProtoTypeIdentifier
                | NoneStatement
    
  syntax FetGroupRefinement ::= FetGroupIdentifier ":" "refined " "to" FetGroupSpecAssocDef

endmodule