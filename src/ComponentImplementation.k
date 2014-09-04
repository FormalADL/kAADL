module COMPONENTIMPLEMENTATION-SYNTAX

  syntax CmpImpl ::= CmpCategory "implementation" CmpImplName  "end" CmpImplName ";"
  syntax CmpImpl ::= CmpCategory "implementation" CmpImplName CmpImplAssocDef "end" CmpImplName ";"
  syntax CmpImplName ::= CmpTypeId "." CmpImplId
  syntax CmpImplId ::= Id

  syntax CmpImplAssocDef ::= ProtoTypeBindings
                           | "prototypes" ProtoTypeList 
                           | "prototypes" NoneStatement 
                           | "subcomponents" SubCmpList 
                           | "subcomponents" NoneStatement
                           | "calls" SubPgmCallSeqList  
                           | "calls" NoneStatement 
                           | "connections" ConnectionList 
                           | "connections" NoneStatement 
                           | "flows" FlowImplList  
                           | "flows" EndToEndFlowSpecList  
                           | "flows" NoneStatement
                           | ModesSubclause 
                           | "properties" PpeAssocList 
                           | "properties" ContainedPpeAssocList 
                           | "properties" NoneStatement  
	                       | AnnexSubclause						   
  syntax CmpImplAssocDef ::= CmpImplAssocDef CmpImplAssocDef     //the same bug with componenttype define

  syntax SubCmpList ::= SubCmp
                      | SubCmpList SubCmpList

  syntax SubPgmCallSeqList ::= SubPgmCallSeq
                      | SubPgmCallSeqList SubPgmCallSeqList

  syntax ConnectionList ::= Connection
                      | ConnectionList ConnectionList

  syntax FlowImplList ::= FlowImpl
                      | FlowImplList FlowImplList

  syntax EndToEndFlowSpecList ::= EndToEndFlowSpec
                      | EndToEndFlowSpecList EndToEndFlowSpecList
  
 
//Ext have some problem. 
  syntax CmpImplExt ::= CmpCategory "implementation" CmpImplName "extends" UniCmpImplRef "end" CmpImplName ";"
  syntax CmpImplExt ::= CmpCategory "implementation" CmpImplName "extends" UniCmpImplRef CmpImplExtAssocDef "end" CmpImplName ";"
  syntax UniCmpImplRef ::= CmpImplName | PkgName "::" CmpImplName
  
  syntax CmpImplExtAssocDef ::= ProtoTypeBindings
                           | "prototypes" ProtoTypeList 
						   | "prototypes" ProtoTypeRefinementList
                           | "prototypes" NoneStatement 
                           | "subcomponents" SubCmpList
						   | "subcomponents" SubCmpRefinementList
                           | "subcomponents" NoneStatement
                           | "calls" SubPgmCallSeqList 
                           | "calls" NoneStatement 
                           | "connections" ConnectionList
						   | "connections" ConnectionRefinementList
                           | "connections" NoneStatement 
                           | "flows" FlowImplList 
						   | "flows" FlowImplRefinementList 
                           | "flows" EndToEndFlowSpecList 
						   | "flows" EndToEndFlowSpecRefinementList 
                           | "flows" NoneStatement
                           | ModesSubclause 
	                       | "properties" PpeAssocList
                           | "properties" ContainedPpeAssocList
                           | "properties" NoneStatement         
						   | AnnexSubclause						   
  syntax CmpImplExtAssocDef ::= CmpImplExtAssocDef CmpImplExtAssocDef     //the same bug with componenttype define
  
  syntax SubCmpRefinementList ::= SubCmpRefinement
                      | SubCmpRefinementList SubCmpRefinementList  
 
  syntax ConnectionRefinementList ::= ConnectionRefinement
                      | ConnectionRefinementList ConnectionRefinementList 
 
  syntax ProtoTypeRefinementList ::= ProtoTypeRefinement
                      | ProtoTypeRefinementList ProtoTypeRefinementList 
 
  syntax FlowImplRefinementList ::= FlowImplRefinement
                      | FlowImplRefinementList FlowImplRefinementList 
 
  syntax EndToEndFlowSpecRefinementList ::= EndToEndFlowSpecRefinement
                      | EndToEndFlowSpecRefinementList EndToEndFlowSpecRefinementList 
 
//--------------------------------------------------------------------------------------------------------------------
/*
  syntax FlowSpecLists ::= FlowImpl
                       | EndToEndFlowSpec
                       | FlowSpecLists FlowSpecLists

  syntax SubCmpDef ::= "subcomponents" SubCmpList 
                       | "subcomponents" NoneStatement

  syntax SubPgmCallSeqDef ::= "calls" SubPgmCallSeqList  
                             | "calls" NoneStatement

  syntax ConnectionDef ::= "connections" ConnectionList 
                          | "connections" NoneStatement 
                          
  syntax FlowSpecDefs ::= "flows" FlowImplList  
                        | "flows" EndToEndFlowSpecList  
                        | "flows" NoneStatement                       

  syntax CmpImpl ::= CmpCategory "implementation" CmpImplName  "end" CmpImplName ";"
                   | CmpCategory "implementation" CmpImplName  ProtoTypeBindings"end" CmpImplName ";"
                   | CmpCategory "implementation" CmpImplName CmpImplAssocDef "end" CmpImplName ";"
                   | CmpCategory "implementation" CmpImplName ProtoTypeBindings CmpImplAssocDef "end" CmpImplName ";"

  syntax CmpImplExt ::= CmpCategory "implementation" CmpImplName "extends" UniCmpImplRef "end" CmpImplName ";"
                      | CmpCategory "implementation" CmpImplName "extends" UniCmpImplRef ProtoTypeBindings "end" CmpImplName ";"
                      | CmpCategory "implementation" CmpImplName "extends" UniCmpImplRef CmpImplExtAssocDef "end" CmpImplName ";"
                      | CmpCategory "implementation" CmpImplName "extends" UniCmpImplRef ProtoTypeBindings CmpImplExtAssocDef "end" CmpImplName ";"

// ProtoTypeDef SubCmpDef SubPgmCallSeqDef ConnectionDef FlowSpecDefs  ModesSubclause PpeAssocDef AnnexSubclause
  
   syntax CmpImplAssocDef ::= ProtoTypeDef
                            | SubCmpDef 
                            | SubPgmCallSeqDef 
                            | ConnectionDef 
                            | FlowSpecDefs  
                            | ModesSubclause 
                            | PpeAssocDef 
 */                           | AnnexSubclause
//-------------------------------------------------------------------------------------------------------------------- 
 
 
 
 
 
  
  
  
  
  
  
  
endmodule