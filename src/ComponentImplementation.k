module COMPONENTIMPLEMENTATION-SYNTAX
  syntax CmpImpl ::= CmpCategory "implementation" CmpImplName CmpImplAssocDef KeyEnd CmpImplName ";"
  syntax CmpImplName ::= CmpTypeId"."CmpImplId
  syntax CmpImplId ::= Id
  syntax CmpImplAssocDef ::= CmpImplAssocDef CmpImplAssocDef
  syntax CmpImplAssocDef ::= "prototypes" ProtoType 
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
	           | AnnexSubclause
//             | "properties" PpeAssoc
//             | "properties" ContainedPpeAssoc
               | "properties" NoneStatement

  syntax ProtoType ::= ProtoType ProtoType
  syntax SubCmp ::= SubCmp SubCmp
  syntax SubPgmCallSeq ::= SubPgmCallSeq SubPgmCallSeq
  syntax Connection ::= Connection Connection
  syntax FlowImpl ::= FlowImpl FlowImpl
  syntax EndToEndFlowSpec ::= EndToEndFlowSpec EndToEndFlowSpec
//  syntax PpeAssoc ::= PpeAssoc PpeAssoc
//  syntax ContainedPpeAssoc ::= ContainedPpeAssoc ContainedPpeAssoc

//  syntax CmpImplExt ::= CmpCategory "implementation" CmpImplName "extends" UniCmpImplementRef CmpImplAssocDef KeyEnd CmpImplName ";"
  syntax UniCmpImplRef ::= CmpImplName | PkgName "::" CmpImplName
endmodule