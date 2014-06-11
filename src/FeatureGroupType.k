module FEATUREGROUPTYPE-SYNATX
 
  syntax FetGroupType ::= "feature" "group" FetGroupId FetGroupTypeAssocDef "end" FetGroupId ";"
  syntax FetGroupTypeAssocDef ::= ProtoTypeOfFetGroupType FetOfFetGroupType InverseOfFetGroupType PpeOfFetGroupType AnnexOfFetGroupType
  syntax ProtoTypeOfFetGroupType ::= "prototypes" ProtoTypeOfFetGroupTypeTmp 
                                   | NoneStatement
  syntax ProtoTypeOfFetGroupTypeTmp ::= ProtoType  // + 
                                      | ProtoType ProtoTypeOfFetGroupTypeTmp 
  syntax FetOfFetGroupType ::= "featrues" FetOfFetGroupTypeTmp
                             | NoneStatement
  syntax FetOfFetGroupTypeTmp ::= Feature
                                | Feature FetOfFetGroupTypeTmp
  syntax InverseOfFetGroupType ::= "inverse" "of" UniFetGroupTypeRef
                                |  NoneStatement
  syntax UniFetGroupTypeRef ::= FetGroupTypeRefId
                              | PkgName "::" FetGroupTypeRefId
  syntax FetGroupTypeRefId ::= NODEF
  syntax PpeOfFetGroupType ::= "properties" PpeOfFetGroupTypeTmp
  syntax PpeOfFetGroupTypeTmp ::= FetGroupContainedPpeAssoc
                                | FetGroupContainedPpeAssoc PpeOfFetGroupTypeTmp
                                | NoneStatement
  syntax FetGroupContainedPpeAssoc ::= NODEF
  syntax AnnexOfFetGroupType ::= NODEF
  syntax FetGroupTypeExt ::= "feature" "group" Id "extends" UniFetGroupTypeRef FetGroupTypeExtAssocDef "end" Id ";"  
  syntax FetGroupTypeExtAssocDef ::= ProtoTypeBindings ProtoTypeOfFetGroupTypeExt FetOfFetGroupTypeExt InverseOfFetGroupTypeExt PpeOfFetGroupTypeExt AnnexOfFetGroupTypeExt 
  syntax  ProtoTypeOfFetGroupTypeExt ::= "prototypes" ProtoTypeOfFetGroupTypeExtTmp
					                   | NoneStatement // add 
  syntax ProtoTypeOfFetGroupTypeExtTmp ::= ProtoTypeList
                                         | ProtoTypeRefinementList
                                         | NoneStatement
  syntax ProtoTypeList ::= ProtoType | ProtoType ProtoTypeList
  syntax ProtoTypeRefinementList ::= ProtoTypeRefinement 
                                   | ProtoTypeRefinement ProtoTypeRefinementList
  syntax  FetOfFetGroupTypeExt ::= "features" FetOfFetGroupTypeExtTmp
				                 | NoneStatement // add 
  syntax FetOfFetGroupTypeExtTmp ::= FetList | FetRefinementList | NoneStatement
  syntax FetList ::= Feature 
                   | Feature FetList
  syntax FetRefinementList ::= FetRefinement | FetRefinement FetRefinementList
  syntax InverseOfFetGroupTypeExt ::= InverseOfFetGroupType // they have the same syntax
					                | NoneStatement
  syntax  PpeOfFetGroupTypeExt ::= PpeOfFetGroupType | NoneStatement
  syntax  AnnexOfFetGroupTypeExt ::= NoneStatement
                                   | AnnexSubclause 
                                   | AnnexSubclause AnnexOfFetGroupTypeExt

  syntax FetGroupSpec ::= FetGroupId ":" FetGroupSpecAssocDef 
  syntax FetGroupSpecAssocDef ::= "in""feature" "group" InverseOfUniProtoType
				                | "out""feature" "group" InverseOfUniProtoType
				                | "group" InverseOfUniProtoType
  syntax InverseOfUniProtoType ::= "inverse" "of" UniFetGroupTypeRef
                                 | "inverse" "of" ProtoTypeId
                                 | UniFetGroupTypeRef
                                 | ProtoTypeId
                                 | NoneStatement
    
  syntax FetGroupRefinement ::= FetGroupId ":" "refined" "to" FetGroupSpecAssocDef

endmodule
