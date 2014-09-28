module FEATUREGROUPTYPE-SYNATX
 
  syntax FetGroupType ::=  Mfeature   Mgroup  FetGroupId  Mend  FetGroupId  MSemicolon 
                        |  Mfeature   Mgroup  FetGroupId FetGroupTypeAssocDef  Mend  FetGroupId  MSemicolon   
  syntax FetGroupId ::= Id
  
  syntax FetGroupTypeAssocDef ::=  Mprototypes  ProtoTypeList 
                                |  Mprototypes  NoneStatement
                                |  Mfeatures  FeatureList
								|  Minverse   Mof  UniFetGroupTypeRef 
								|  Mproperties  FetGroupContainedPpeAssocList 
								|  Mproperties  NoneStatement
								| AnnexSubclauseList

 syntax FetGroupTypeAssocDef ::= FetGroupTypeAssocDef FetGroupTypeAssocDef
 
  syntax FetGroupContainedPpeAssocList ::= ContainedPpeAssoc
                                         | FetGroupContainedPpeAssocList FetGroupContainedPpeAssocList							

  syntax AnnexSubclauseList ::= AnnexSubclause
                              | AnnexSubclauseList AnnexSubclauseList
  
  syntax FetGroupTypeExt ::=  Mfeature   Mgroup  FetGroupId  Mextends  UniFetGroupTypeRef   Mend  FetGroupId  MSemicolon 
                           |  Mfeature   Mgroup  FetGroupId  Mextends  UniFetGroupTypeRef  ProtoTypeBindings  Mend  FetGroupId  MSemicolon 
                           |  Mfeature   Mgroup  FetGroupId  Mextends  UniFetGroupTypeRef  FetGroupTypeExtAssocDef  Mend  FetGroupId  MSemicolon 
                           |  Mfeature   Mgroup  FetGroupId  Mextends  UniFetGroupTypeRef  ProtoTypeBindings FetGroupTypeExtAssocDef  Mend  FetGroupId  MSemicolon     
  
  syntax FetGroupTypeExtAssocDef ::=  Mprototypes  ProtoTypeList
                                   |  Mprototypes  ProtoTypeRefinementList
                                   |  Mprototypes  NoneStatement
								   |  Mfeatures  FeatureList
								   |  Mfeatures  FetRefinementList
								   |  Minverse   Mof  UniFetGroupTypeRef  
								   |  Mproperties  FetGroupContainedPpeAssocList 
								   |  Mproperties  NoneStatement 
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
							 
  syntax FetGroupSpec ::= FetGroupId  Mcolon  FetGroupSpecAssocDef
   
  syntax FetGroupSpecAssocDef ::=  Min   Mfeature   Mgroup  InverseOfUniProtoType
				                |  Mout   Mfeature   Mgroup  InverseOfUniProtoType
				                |  Mfeature   Mgroup  InverseOfUniProtoType
				                
  syntax InverseOfUniProtoType ::=  Minverse   Mof  UniFetGroupTypeRef
                                 |  Minverse   Mof  FetProtoTypeId
                                 | UniFetGroupTypeRef
                                 | FetProtoTypeId
          
  syntax FetGroupRefinement ::= FetGroupId  Mcolon   Mrefined   Mto  FetGroupSpecAssocDef

  syntax UniFetGroupTypeRef ::= FetGroupTypeRefId
                              | PkgName  MDoubleColon  FetGroupTypeRefId
                              
  syntax FetGroupTypeRefId ::= Id
//---------------------------------------------------------------------------------------------------------------------
/*
  syntax FetDef ::=  Minverse   Mof  UniFetGroupTypeRef
  
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

