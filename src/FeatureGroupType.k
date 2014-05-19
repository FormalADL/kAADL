module FEATUREGROUPTYPE-SYNATX
// 8.2 check
  syntax FeatureGroupType ::= "feature" "group" Identifier FeatureGroupTypeAssocDefination "end" Identifier ";"
     syntax FeatureGroupTypeAssocDefination ::= ProtoTypeOfFeatureGroupType FeatureOfFeatureGroupType InverseOfFeatureGroupType PropertyOfFeatureGroupType AnnexOfFeatureGroupType
      syntax ProtoTypeOfFeatureGroupType ::= "prototypes" ProtoTypeOfFeatureGroupTypeTmp 
                  | NoneStatement
        syntax ProtoTypeOfFeatureGroupTypeTmp ::= ProtoType
                    | ProtoType ProtoTypeOfFeatureGroupTypeTmp 
      syntax FeatureOfFeatureGroupType ::= "featrues" FeatureOfFeatureGroupTypeTmp
                 |  NoneStatement
        syntax FeatureOfFeatureGroupTypeTmp ::= Feature
                     |  Feature FeatureOfFeatureGroupTypeTmp
      syntax InverseOfFeatureGroupType ::= "inverse" "of" UniqueFeatureGroupTypeReference
                      |   NoneStatement
        syntax UniqueFeatureGroupTypeReference ::= FeatureGroupTypeReferenceIdentifier
              |  PackageName "::" FeatureGroupTypeReferenceIdentifier
          syntax FeatureGroupTypeReferenceIdentifier ::= NODEF
      syntax PropertyOfFeatureGroupType ::= "properties" PropertyOfFeatureGroupTypeTmp
        syntax PropertyOfFeatureGroupTypeTmp ::= FeatureGroupContainedPropertyAssociation
                      |  FeatureGroupContainedPropertyAssociation PropertyOfFeatureGroupTypeTmp
                      |  NoneStatement
          syntax FeatureGroupContainedPropertyAssociation ::= NODEF
      syntax AnnexOfFeatureGroupType ::= NODEF
  syntax FeatureGroupTypeExtension ::= "feature" "group" Identifier "extends" UniqueFeatureGroupTypeReference FeatureGroupTypeExtensionAssocDefination "end" Identifier ";"  
    syntax FeatureGroupTypeExtensionAssocDefination ::= ProtoTypeBindings ProtoTypeOfFeatureGroupTypeExtension FeatureOfFeatureGroupTypeExtension InverseOfFeatureGroupTypeExtension PropertyOfFeatureGroupTypeExtension AnnexOfFeatureGroupTypeExtension 
      syntax  ProtoTypeOfFeatureGroupTypeExtension ::=  "prototypes" ProtoTypeOfFeatureGroupTypeExtensionTmp
        syntax ProtoTypeOfFeatureGroupTypeExtensionTmp ::= ProtoTypeList
                    |  ProtoTypeRefinementList
                    | NoneStatement
          syntax ProtoTypeList ::= ProtoType | ProtoType ProtoTypeList
          syntax ProtoTypeRefinementList ::= ProtoTypeRefinement | ProtoTypeRefinement ProtoTypeRefinementList
      syntax  FeatureOfFeatureGroupTypeExtension ::= "features" FeatureOfFeatureGroupTypeExtensionTmp
        syntax FeatureOfFeatureGroupTypeExtensionTmp ::= FeatureList | FeatureRefinementList | NoneStatement
          syntax FeatureList ::= Feature | Feature FeatureList
          syntax FeatureRefinementList ::= FeatureRefinement | FeatureRefinement FeatureRefinementList
      syntax  InverseOfFeatureGroupTypeExtension  ::= InverseOfFeatureGroupType // they have the same syntax
      syntax  PropertyOfFeatureGroupTypeExtension ::= PropertyOfFeatureGroupType
      syntax  AnnexOfFeatureGroupTypeExtension ::= NoneStatement
                   | AnnexSubclause 
                   | AnnexSubclause AnnexOfFeatureGroupTypeExtension

  syntax FeatureGroupSpec ::= FeatureGroupIdentifier ":" FeatureGroupSpecAssocDefination 
    syntax FeatureGroupSpecAssocDefination ::= InOut "feature" "group" InverseOfUniqueProtoType
      syntax InverseOfUniqueProtoType ::= "inverse" "of" UniqueFeatureGroupTypeReference
                | "inverse" "of" ProtoTypeIdentifier
                | UniqueFeatureGroupTypeReference
                | ProtoTypeIdentifier
                | NoneStatement
    
  syntax FeatureGroupRefinement ::= FeatureGroupIdentifier ":" "refined " "to" FeatureGroupSpecAssocDefination

endmodule