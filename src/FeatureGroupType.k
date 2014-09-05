module FEATUREGROUPTYPE-SYNATX
 
  syntax FetGroupType ::= "feature" "group" FetGroupId "end" FetGroupId ";"
                        | "feature" "group" FetGroupId FetGroupTypeAssocDef "end" FetGroupId ";"  
  syntax FetGroupId ::= Id
  
  syntax FetGroupTypeAssocDef ::= "prototypes" ProtoTypeList 
                                | "prototypes" NoneStatement
                                | "features" FeatureList
								| "inverse" "of" UniFetGroupTypeRef 
								| "properties" FetGroupContainedPpeAssocList 
								| "properties" NoneStatement
								| AnnexSubclauseList

 syntax FetGroupTypeAssocDef ::= FetGroupTypeAssocDef FetGroupTypeAssocDef
 
  syntax FetGroupContainedPpeAssocList ::= ContainedPpeAssoc
                                         | FetGroupContainedPpeAssocList FetGroupContainedPpeAssocList							

  syntax AnnexSubclauseList ::= AnnexSubclause
                              | AnnexSubclauseList AnnexSubclauseList
  
  syntax FetGroupTypeExt ::= "feature" "group" FetGroupId "extends" UniFetGroupTypeRef  "end" FetGroupId ";"
                           | "feature" "group" FetGroupId "extends" UniFetGroupTypeRef  ProtoTypeBindings "end" FetGroupId ";"
                           | "feature" "group" FetGroupId "extends" UniFetGroupTypeRef  FetGroupTypeExtAssocDef "end" FetGroupId ";"
                           | "feature" "group" FetGroupId "extends" UniFetGroupTypeRef  ProtoTypeBindings FetGroupTypeExtAssocDef "end" FetGroupId ";"    
  
  syntax FetGroupTypeExtAssocDef ::= "prototypes" ProtoTypeList
                                   | "prototypes" ProtoTypeRefinementList
                                   | "prototypes" NoneStatement
								   | "features" FeatureList
								   | "features" FetRefinementList
								   | "inverse" "of" UniFetGroupTypeRef  
								   | "properties" FetGroupContainedPpeAssocList 
								   | "properties" NoneStatement 
								   | AnnexSubclauseList 
  syntax FetGroupTypeExtAssocDef ::= FetGroupTypeExtAssocDef FetGroupTypeExtAssocDef
  								   
//  syntax ProtoTypeOfFetGroupTypeExt::= ProtoTypeList
//                                     | ProtoTypeRefinementList
//                                     | NoneStatement
//  syntax ProtoTypeList ::= ProtoType 
//                         | ProtoTypeList ProtoTypeList
//  syntax ProtoTypeRefinementList ::= ProtoTypeRefinement 
//                                   | ProtoTypeRefinementList ProtoTypeRefinementList
								   
//  syntax FetOfFetGroupTypeExt ::= FetList 
//                                | FetRefinementList
// syntax FetList ::= Feature 
//                   | Feature FetList

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

  syntax UniFetGroupTypeRef ::= FetGroupTypeRefId
                              | PkgName "::" FetGroupTypeRefId
                              
  syntax FetGroupTypeRefId ::= Id
//---------------------------------------------------------------------------------------------------------------------
/*
  syntax FetDef ::= "inverse" "of" UniFetGroupTypeRef
  
  //ProtoTypeDef FeatureDef FetDef PpeAssocDef AnnexSubclauseDef
  
  syntax FetGroupTypeAssocDef ::= ProtoTypeDef
                                | FeatureDef
                                | FetDef
                                | PpeAssocDef
                                | AnnexSubclauseDef
                                | ProtoTypeDef FeatureDef
                                | ProtoTypeDef FetDef
                                | ProtoTypeDef PpeAssocDef
                                | ProtoTypeDef AnnexSubclauseDef
                                | FeatureDef FetDef
                                | FeatureDef PpeAssocDef
                                | FeatureDef AnnexSubclauseDef
                                | FetDef PpeAssocDef
                                | FetDef AnnexSubclauseDef
                                | PpeAssocDef AnnexSubclauseDef
                                | ProtoTypeDef FeatureDef FetDef
                                | ProtoTypeDef FeatureDef PpeAssocDef
                                | ProtoTypeDef FeatureDef AnnexSubclauseDef
                                | ProtoTypeDef FetDef PpeAssocDef
                                | ProtoTypeDef FetDef AnnexSubclauseDef
                                | ProtoTypeDef PpeAssocDef AnnexSubclauseDef
                                | FeatureDef FetDef PpeAssocDef  
                                | FeatureDef FetDef AnnexSubclauseDef
                                | FeatureDef PpeAssocDef AnnexSubclauseDef
                                | FetDef PpeAssocDef AnnexSubclauseDef
                                | ProtoTypeDef FetDef PpeAssocDef AnnexSubclauseDef
                                | ProtoTypeDef FeatureDef PpeAssocDef AnnexSubclauseDef
                                | ProtoTypeDef FeatureDef FetDef AnnexSubclauseDef
                                | ProtoTypeDef FeatureDef FetDef PpeAssocDef 
                                | FeatureDef FetDef PpeAssocDef AnnexSubclauseDef
                                | ProtoTypeDef FeatureDef FetDef PpeAssocDef AnnexSubclauseDef

  syntax FetGroupTypeExtAssocDef ::= ProtoTypeDef
                                   | FeatureDef
                                   | FetDef
                                   | PpeAssocDef
                                   | AnnexSubclauseDef
                                   | ProtoTypeDef FeatureDef
                                   | ProtoTypeDef FetDef
                                   | ProtoTypeDef PpeAssocDef
                                   | ProtoTypeDef AnnexSubclauseDef
                                   | FeatureDef FetDef
                                   | FeatureDef PpeAssocDef
                                   | FeatureDef AnnexSubclauseDef
                                   | FetDef PpeAssocDef
                                   | FetDef AnnexSubclauseDef
                                   | PpeAssocDef AnnexSubclauseDef
                                   | ProtoTypeDef FeatureDef FetDef
                                   | ProtoTypeDef FeatureDef PpeAssocDef
                                   | ProtoTypeDef FeatureDef AnnexSubclauseDef
                                   | ProtoTypeDef FetDef PpeAssocDef
                                   | ProtoTypeDef FetDef AnnexSubclauseDef
                                   | ProtoTypeDef PpeAssocDef AnnexSubclauseDef
                                   | FeatureDef FetDef PpeAssocDef  
                                   | FeatureDef FetDef AnnexSubclauseDef
                                   | FeatureDef PpeAssocDef AnnexSubclauseDef
                                   | FetDef PpeAssocDef AnnexSubclauseDef
                                   | ProtoTypeDef FetDef PpeAssocDef AnnexSubclauseDef
                                   | ProtoTypeDef FeatureDef PpeAssocDef AnnexSubclauseDef
                                   | ProtoTypeDef FeatureDef FetDef AnnexSubclauseDef
                                   | ProtoTypeDef FeatureDef FetDef PpeAssocDef 
                                   | FeatureDef FetDef PpeAssocDef AnnexSubclauseDef
                                   | ProtoTypeDef FeatureDef FetDef PpeAssocDef AnnexSubclauseDef                                
*/

//---------------------------------------------------------------------------------------------------------------------
endmodule
