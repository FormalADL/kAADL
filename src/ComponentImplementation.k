module COMPONENTIMPLEMENTATION-SYNTAX

  syntax CmpImpl ::= CmpCategory "implementation" CmpImplName CmpImplAssocDef "end" CmpImplName ";"
  syntax CmpImplName ::= CmpTypeId "." CmpImplId
  syntax CmpImplId ::= Id

  syntax CmpImplAssocDef ::= ProtoTypeBindings
                           | "prototypes" ProtoType 
                           | "prototypes" NoneStatement 
                           | "subcomponents" SubCmp
                           | "subcomponents" NoneStatement
                           | "calls" SubPgmCallSeq 
                           | "calls" NoneStatement 
                           | "connections" Connection
                           | "connections" NoneStatement 
                           | "flows" FlowImpl 
                           | "flows" EndToEndFlowSpec 
                           | "flows" NoneStatement
                           | ModesSubclause 
                           | "properties" PpeAssoc
                           | "properties" ContainedPpeAssoc
                           | "properties" NoneStatement  
	                       | AnnexSubclause						   
  syntax CmpImplAssocDef ::= CmpImplAssocDef CmpImplAssocDef     //the same bug with componenttype define
 
//Ext have some problem. 
  syntax CmpImplExt ::= CmpCategory "implementation" CmpImplName "extends" UniCmpImplRef CmpImplExtAssocDef "end" CmpImplName ";"
  syntax UniCmpImplRef ::= CmpImplName | PkgName "::" CmpImplName
  
  syntax CmpImplExtAssocDef ::= ProtoTypeBindings
                           | "prototypes" ProtoType 
						   | "prototypes" ProtoTypeRefinement
                           | "prototypes" NoneStatement 
                           | "subcomponents" SubCmp
						   | "subcomponents" SubCmpRefinement
                           | "subcomponents" NoneStatement
                           | "calls" SubPgmCallSeq 
                           | "calls" NoneStatement 
                           | "connections" Connection
						   | "connections" ConnectionRefinement
                           | "connections" NoneStatement 
                           | "flows" FlowImpl 
						   | "flows" FlowImplRefinement 
                           | "flows" EndToEndFlowSpec 
						   | "flows" EndToEndFlowSpecRefinement 
                           | "flows" NoneStatement
                           | ModesSubclause 
	                       | "properties" PpeAssoc
                           | "properties" ContainedPpeAssoc
                           | "properties" NoneStatement         
						   | AnnexSubclause						   
  syntax CmpImplExtAssocDef ::= CmpImplExtAssocDef CmpImplExtAssocDef     //the same bug with componenttype define
endmodule