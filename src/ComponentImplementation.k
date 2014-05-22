module COMPONENTIMPLEMENTATION-SYNTAX
  syntax ComponentImplementation ::= ComponentCategory "implementation" ComponentImplementationName ComponentImplementationAssocDefination "end" ComponentImplementationName ";"
  syntax ComponentImplementationName ::= ComponentTypeIdentifier"."ComponentImplementationIdentifier
  syntax ComponentImplementationIdentifier ::= Id
  syntax ComponentImplementationAssocDefination ::= ComponentImplementationAssocDefination ComponentImplementationAssocDefination
  syntax ComponentImplementationAssocDefination ::= "prototypes" ProtoType 
               | "prototypes" NoneStatement 
               | "subcomponents" Subcomponent
               | "subcomponents" NoneStatement
               | "calls" SubprogramCallSequence 
               | "calls" NoneStatement 
               | "connections" Connection
               | "connections" NoneStatement 
               | "flows" FlowImplementation 
               | "flows" EndToEndFlowSpec 
               | "flows" NoneStatement
//               | ModesSubclause 
               | "properties" PpeAssociation
               | "properties" ContainedPpeAssociation
               | "properties" NoneStatement
                | AnnexSubclause
  syntax ProtoType ::= ProtoType ProtoType  // "+"
  syntax Subcomponent ::= Subcomponent Subcomponent
  syntax SubprogramCallSequence ::= SubprogramCallSequence SubprogramCallSequence
  syntax Connection ::= Connection Connection
  syntax FlowImplementation ::= FlowImplementation FlowImplementation
  syntax EndToEndFlowSpec ::= EndToEndFlowSpec EndToEndFlowSpec
  syntax PpeAssociation ::= PpeAssociation PpeAssociation
  syntax ContainedPpeAssociation ::= ContainedPpeAssociation ContainedPpeAssociation
  syntax ComponentImplementationExtension ::= ComponentCategory "implementation" ComponentImplementionName "extends" UniqueComponentImplementReference ComponentImplementationAssocDefination "end" ComponentImplementionName ";"
  syntax ComponentImplementionName ::= Id
  syntax UniqueComponentImplementReference ::= ComponentImplementName | PkgName "::" ComponentImplementName
  syntax ComponentImplementName ::=  Id
endmodule