module COMPONENTTYPE-SYNTAX

  syntax CmpType ::= CmpCategory CmpTypeId  Mend  CmpTypeId  MSemicolon 
                   | CmpCategory CmpTypeId CmpAssocDef  Mend  CmpTypeId  MSemicolon 
  syntax CmpTypeId ::= Id
  syntax CmpAssocDef ::=  Mprototypes  ProtoTypeList 
                       |  Mprototypes  NoneStatement
                       |  Mfeatures  FeatureList 
			|  Mfeatures  NoneStatement
                       |  Mflows  FlowSpecList 
					   |  Mflows  NoneStatement
                       | ModesSubclause 
                       | RequiresModesSubclause
				       | AnnexSubclause 
                       |  Mproperties  PpeAssocList
                       |  Mproperties  NoneStatement
					   | CmpAssocDef CmpAssocDef       //here is a bug!

  syntax ProtoTypeList ::= ProtoType
                         | ProtoTypeRefinementList
                         | ProtoTypeList ProtoTypeList
  
  syntax FeatureList ::= Feature
                         | FeatureList FeatureList
                         
  syntax FlowSpecList ::= FlowSpec
                         | FlowSpecList FlowSpecList

  syntax CmpTypePpeAssocList ::= PpeAssoc
                         | CmpTypePpeAssocList CmpTypePpeAssocList

  syntax ContainedPpeAssocList ::= ContainedPpeAssoc
                         | ContainedPpeAssocList ContainedPpeAssocList
                          
 syntax PpeAssocList ::= CmpTypePpeAssocList
			|ContainedPpeAssocList
			| PpeAssocList PpeAssocList

  syntax CmpCategory ::= AbstractCmpCategory 
                       | SoftwareCategory 
					   | ExecPlateformCategory 
					   | CompositeCategory
					   
  syntax AbstractCmpCategory ::=  Mabstract 
  syntax SoftwareCategory ::=  Mdata  
                            |  Msubprogram  
							|  Msubprogram   Mgroup  
							|  Mthread  
							|  Mthread   Mgroup  
							|  Mprocess 
							
  syntax CompositeCategory ::=  Msystem 
  syntax ExecPlateformCategory ::=  Mmemory  |  Mprocessor  |  Mbus  |  Mdevice  |  Mvirtual   Mprocessor  |  Mvirtrual   Mbus  
  
  syntax CmpTypeExt ::= CmpCategory CmpTypeId  Mextends  UniCmpTypeRef   Mend  CmpTypeId  MSemicolon 
                      | CmpCategory CmpTypeId  Mextends  UniCmpTypeRef  ProtoTypeBindings  Mend  CmpTypeId  MSemicolon 
                      | CmpCategory CmpTypeId  Mextends  UniCmpTypeRef  CmpAssocDef  Mend  CmpTypeId  MSemicolon 
                      | CmpCategory CmpTypeId  Mextends  UniCmpTypeRef  ProtoTypeBindings CmpAssocDef  Mend  CmpTypeId  MSemicolon 

  syntax UniCmpTypeRef ::= PkgName  MDoubleColon  CmpTypeId 
                         | CmpTypeId
                         
//-----------------------------------------------------------------------------------------------------------------------
 /*
 
  syntax ProtoTypeList ::= ProtoType
                         | ProtoTypeRefinementList
                         | ProtoTypeList ProtoTypeList
  
  syntax FeatureList ::= Feature
                       | FeatureRefinementList
                       | FeatureList FeatureList
                       
  syntax PpeAssocList ::= PpeAssoc
                        | ContainedPpeAssoc
                        | PpeAssocList PpeAssocList
  
  syntax ProtoTypeDef ::=  Mprototypes  ProtoTypeList 
                        |  Mprototypes  NoneStatement

  syntax FeatureDef   ::=  Mfeatures  FeatureList 
	 				    |  Mfeatures  NoneStatement

  syntax FlowSpecDef  ::=  Mflows  FlowSpecList 
					     |  Mflows  NoneStatement

  syntax PpeAssocDef  ::=  Mproperties  PpeAssocList    
                        |  Mproperties  NoneStatement

  syntax ModesDef ::= ModesSubclause
                    | RequiresModesSubclause
                
  syntax AnnexSubclauseDef ::= AnnexSubclause
                             | AnnexSubclauseDef AnnexSubclauseDef
                     
  //ProtoTypeDef FeatureDef FlowSpecDef PpeAssocDef ModesDef AnnexSubclauseDef

  syntax CmpAssocDef ::= ProtoTypeDef
                       | FeatureDef
                       | FlowSpecDef
                       | PpeAssocDef
                       | ModesSubclause
                       | RequiresModesSubclause
                       | AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef
                       | ProtoTypeDef FlowSpecDef
                       | ProtoTypeDef PpeAssocDef  
                       | ProtoTypeDef ModesDef
                       | ProtoTypeDef AnnexSubclauseDef
                       | FeatureDef FlowSpecDef  
                       | FeatureDef PpeAssocDef  
                       | FeatureDef ModesDef 
                       | FeatureDef AnnexSubclauseDef  
                       | FlowSpecDef PpeAssocDef 
                       | FlowSpecDef ModesDef 
                       | FlowSpecDef AnnexSubclauseDef
                       | PpeAssocDef ModesDef 
                       | PpeAssocDef AnnexSubclauseDef
                       | ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef FlowSpecDef 
                       | ProtoTypeDef FeatureDef PpeAssocDef 
                       | ProtoTypeDef FeatureDef ModesDef
                       | ProtoTypeDef FeatureDef AnnexSubclauseDef
                       | ProtoTypeDef FlowSpecDef PpeAssocDef
                       | ProtoTypeDef FlowSpecDef ModesDef
                       | ProtoTypeDef FlowSpecDef AnnexSubclauseDef
                       | ProtoTypeDef PpeAssocDef ModesDef
                       | ProtoTypeDef PpeAssocDef AnnexSubclauseDef
                       | ProtoTypeDef ModesDef AnnexSubclauseDef
                       | FeatureDef FlowSpecDef PpeAssocDef
                       | FeatureDef FlowSpecDef ModesDef
                       | FeatureDef FlowSpecDef AnnexSubclauseDef
                       | FeatureDef PpeAssocDef ModesDef
                       | FeatureDef PpeAssocDef AnnexSubclauseDef
                       | FeatureDef ModesDef AnnexSubclauseDef
                       | FlowSpecDef PpeAssocDef ModesDef
                       | FlowSpecDef PpeAssocDef AnnexSubclauseDef
                       | FlowSpecDef ModesDef AnnexSubclauseDef
                       | PpeAssocDef ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef FlowSpecDef PpeAssocDef  
                       | ProtoTypeDef FeatureDef FlowSpecDef ModesDef
                       | ProtoTypeDef FeatureDef FlowSpecDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef PpeAssocDef ModesDef
                       | ProtoTypeDef FeatureDef PpeAssocDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FlowSpecDef PpeAssocDef ModesDef
                       | ProtoTypeDef FlowSpecDef PpeAssocDef AnnexSubclauseDef
                       | ProtoTypeDef FlowSpecDef ModesDef AnnexSubclauseDef
                       | ProtoTypeDef PpeAssocDef ModesDef AnnexSubclauseDef
                       | FeatureDef FlowSpecDef PpeAssocDef  ModesDef 
                       | FeatureDef FlowSpecDef PpeAssocDef  AnnexSubclauseDef
                       | FeatureDef FlowSpecDef ModesDef AnnexSubclauseDef
                       | FeatureDef PpeAssocDef ModesDef AnnexSubclauseDef
                       | FlowSpecDef PpeAssocDef ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FlowSpecDef PpeAssocDef ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef  PpeAssocDef ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef FlowSpecDef  ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef FlowSpecDef PpeAssocDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef FlowSpecDef PpeAssocDef ModesDef 
                       | FeatureDef FlowSpecDef PpeAssocDef ModesDef AnnexSubclauseDef
                       | ProtoTypeDef FeatureDef FlowSpecDef PpeAssocDef ModesDef AnnexSubclauseDef
    */
//-------------------------------------------------------------------------------------------------------------------------













                         
endmodule

