module COMPONENTTYPE-SYNTAX
  syntax CmpType ::= CmpCategory CmpTypeIdentifier CmpAssocDef KeyEnd CmpTypeIdentifier ";"
  syntax CmpCategory ::= AbstractCmpCategory 
                       | SoftwareCategory 
//					   | ExecutionPlateformCategory 
					   | CompositeCategory
  syntax AbstractCmpCategory ::= "abstract"
  syntax SoftwareCategory ::= "data" | "subprogram" | "subprogram" "group" | "thread" | "thread" "group" | "process"
  syntax CompositeCategory ::= "system"
  
/*do not support hardware component*/
//  syntax ExecutionPlateformCategory ::= "memory" | "processor" | "bus" | "device" | "virtual" "processor" | "virtrual bus" 
  
  syntax CmpTypeIdentifier ::= Id

  syntax CmpAssocDef ::= "prototypes" ProtoType 
                       | "prototypes" NoneStatement
                       | "features" Fet 
					   | "features" NoneStatement
                       | "flows" FlowSpec 
					   | "flows" NoneStatement
                       | ModesSubclause 
                       | RequiresModesSubclause
//                     | "properties" CmpTypePpeAssoc
//                     | "properties" ContainedPpeAssoc
//                     | "properties" NoneStatement
                       | AnnexSubclause 
  syntax CmpAssocDef ::= CmpAssocDef CmpAssocDef 

/* do not support ComponentTypeExtension
  syntax CmpTypeExt ::= CmpCategory CmpTypeIdentifier "extends" UniqueCmpTypeReference  CmpAssocDef KeyEnd CmpTypeIdentifier ";"
                    | CmpCategory CmpTypeIdentifier "extends" UniqueCmpTypeReference  ProtoTypeBindings CmpAssocDef KeyEnd CmpTypeIdentifier ";"
  syntax UniqueCmpTypeReference ::= PkgName "::" CmpTypeIdentifier |  CmpTypeIdentifier
*/
endmodule