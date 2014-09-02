module FEATUREGROUPTYPE-SYNATX
 
  syntax FetGroupType ::= "feature" "group" FetGroupId FetGroupTypeAssocDef "end" FetGroupId ";"
  
  syntax FetGroupTypeAssocDef ::= "prototypes" ProtoTypeList 
                                | "prototypes" NoneStatement
                                | "features" FetList
								| "inverse" "of" UniFetGroupTypeRef 
								| PpeOfFetGroupType 
								| AnnexSubclauseList

  syntax UniFetGroupTypeRef ::= FetGroupTypeRefId
                              | PkgName "::" FetGroupTypeRefId
  syntax FetGroupTypeRefId ::= Id
  
  syntax PpeOfFetGroupType ::= "properties" FetGroupContainedPpeAssocList
                             | "properties" NoneStatement
  syntax FetGroupContainedPpeAssocList ::= FetGroupContainedPpeAssoc
                                         | FetGroupContainedPpeAssocList FetGroupContainedPpeAssocList
								
  syntax FetGroupContainedPpeAssoc ::= ContainedPpeAssoc
  syntax AnnexSubclauseList ::= AnnexSubclause
                              | AnnexSubclauseList AnnexSubclauseList
  
  syntax FetGroupTypeExt ::= "feature" "group" FetGroupId "extends" UniFetGroupTypeRef  FetGroupTypeExtAssocDef "end" FetGroupId ";"  
  
  syntax FetGroupTypeExtAssocDef ::= ProtoTypeBindings 
                                   | "prototypes" ProtoTypeOfFetGroupTypeExt
								   | "features" FetOfFetGroupTypeExt 
								   | "inverse" "of" UniFetGroupTypeRef  
								   | PpeOfFetGroupType 
								   | AnnexSubclauseList 
								   
  syntax ProtoTypeOfFetGroupTypeExt::= ProtoTypeList
                                     | ProtoTypeRefinementList
                                     | NoneStatement
  syntax ProtoTypeList ::= ProtoType 
                         | ProtoTypeList ProtoTypeList
  syntax ProtoTypeRefinementList ::= ProtoTypeRefinement 
                                   | ProtoTypeRefinementList ProtoTypeRefinementList
								   
  syntax FetOfFetGroupTypeExt ::= FetList 
                                | FetRefinementList
  syntax FetList ::= Feature 
                   | Feature FetList
  syntax FetRefinementList ::= FetRefinement 
                             | FetRefinementList FetRefinementList
							 
  syntax FetGroupSpec ::= FetGroupId ":" FetGroupSpecAssocDef 
  syntax FetGroupSpecAssocDef ::= "in" "feature" "group" InverseOfUniProtoType
				                | "out" "feature" "group" InverseOfUniProtoType
				                | "feature" "group" InverseOfUniProtoType
  syntax InverseOfUniProtoType ::= "inverse" "of" UniFetGroupTypeRef
                                 | "inverse" "of" FetProtoTypeId
                                 | UniFetGroupTypeRef
                                 | FetProtoTypeId
          
  syntax FetGroupRefinement ::= FetGroupId ":" "refined" "to" FetGroupSpecAssocDef

endmodule
