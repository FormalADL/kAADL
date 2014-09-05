module COMPONENTTYPE-SYNTAX

  syntax CmpType ::= CmpCategory CmpTypeId "end" CmpTypeId ";"
                   | CmpCategory CmpTypeId CmpAssocDef "end" CmpTypeId ";"
  syntax CmpTypeId ::= Id
  syntax CmpAssocDef ::= "prototypes" ProtoTypeList 
                       | "prototypes" NoneStatement
                       | "features" FeatureList 
					   | "features" NoneStatement
                       | "flows" FlowSpecList 
					   | "flows" NoneStatement
                       | ModesSubclause 
                       | RequiresModesSubclause
				       | AnnexSubclause 
                       | "properties" PpeAssocList
                       | "properties" NoneStatement
					   | CmpAssocDef CmpAssocDef       //here is a bug!

  syntax ProtoTypeList ::= ProtoType
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
			|CmpTypePpeAssocList PpeAssocList
			|ContainedPpeAssocList PpeAssocList

  syntax CmpCategory ::= AbstractCmpCategory 
                       | SoftwareCategory 
					   | ExecPlateformCategory 
					   | CompositeCategory
					   
  syntax AbstractCmpCategory ::= "abstract"
  syntax SoftwareCategory ::= "data" 
                            | "subprogram" 
							| "subprogram" "group" 
							| "thread" 
							| "thread" "group" 
							| "process"
							
  syntax CompositeCategory ::= "system"
  syntax ExecPlateformCategory ::= "memory" | "processor" | "bus" | "device" | "virtual" "processor" | "virtrual bus" 
  
  syntax CmpTypeExt ::= CmpCategory CmpTypeId "extends" UniCmpTypeRef  "end" CmpTypeId ";"
                      | CmpCategory CmpTypeId "extends" UniCmpTypeRef  ProtoTypeBindings "end" CmpTypeId ";"
                      | CmpCategory CmpTypeId "extends" UniCmpTypeRef  CmpAssocDef "end" CmpTypeId ";"
                      | CmpCategory CmpTypeId "extends" UniCmpTypeRef  ProtoTypeBindings CmpAssocDef "end" CmpTypeId ";"

  syntax UniCmpTypeRef ::= PkgName "::" CmpTypeId 
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
  
  syntax ProtoTypeDef ::= "prototypes" ProtoTypeList 
                        | "prototypes" NoneStatement

  syntax FeatureDef   ::= "features" FeatureList 
	 				    | "features" NoneStatement

  syntax FlowSpecDef  ::= "flows" FlowSpecList 
					     | "flows" NoneStatement

  syntax PpeAssocDef  ::= "properties" PpeAssocList    
                        | "properties" NoneStatement

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
