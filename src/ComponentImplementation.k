module COMPONENTIMPLEMENTATION-SYNTAX
  syntax CmpImpl ::= CmpCategory "implementation" CmpImplName CmpImplAssocDef KeyEnd CmpImplName ";"
  syntax CmpImplName ::= CmpTypeIdentifier"."CmpImplIdentifier
  syntax CmpImplIdentifier ::= Id
  syntax CmpImplAssocDef ::= CmpImplAssocDef CmpImplAssocDef
  syntax CmpImplAssocDef ::= "prototypes" ProtoType 
               | "prototypes" NoneStatement 
               | "subcomponents" Subcomponent
               | "subcomponents" NoneStatement
               | "calls" SubprogramCallSequence 
               | "calls" NoneStatement 
               | "connections" Connection
               | "connections" NoneStatement 
               | "flows" FlowImpl 
               | "flows" EndToEndFlowSpec 
               | "flows" NoneStatement
//             | ModesSubclause 
               | "properties" PpeAssoc
               | "properties" ContainedPpeAssoc
               | "properties" NoneStatement
                | AnnexSubclause
  syntax ProtoType ::= ProtoType ProtoType  // "+"
  syntax Subcomponent ::= Subcomponent Subcomponent
  syntax SubprogramCallSequence ::= SubprogramCallSequence SubprogramCallSequence
  syntax Connection ::= Connection Connection
  syntax FlowImpl ::= FlowImpl FlowImpl
  syntax EndToEndFlowSpec ::= EndToEndFlowSpec EndToEndFlowSpec
  syntax PpeAssoc ::= PpeAssoc PpeAssoc
  syntax ContainedPpeAssoc ::= ContainedPpeAssoc ContainedPpeAssoc
  syntax CmpImplExt ::= CmpCategory "implementation" CmpImplementionName "extends" UniqueCmpImplementReference CmpImplAssocDef KeyEnd CmpImplementionName ";"
  syntax CmpImplementionName ::= Id
  syntax UniqueCmpImplementReference ::= CmpImplementName | PkgName "::" CmpImplementName
  syntax CmpImplementName ::=  Id
endmodule