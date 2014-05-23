module COMPONENTTYPE-SYNTAX
  syntax CmpType ::= CmpCategory CmpTypeIdentifier KeyEnd CmpTypeIdentifier ";"
                   | CmpCategory CmpTypeIdentifier CmpAssocDef KeyEnd CmpTypeIdentifier ";"
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
                       | "features" Feature 
					   | "features" NoneStatement
                       | "flows" FlowSpec 
					   | "flows" NoneStatement
                       | ModesSubclause 
                       | RequiresModesSubclause
				       | AnnexSubclause 
//                     | "properties" CmpTypePpeAssoc
//                     | "properties" ContainedPpeAssoc
//                     | "properties" NoneStatement

  syntax CmpAssocDef ::= CmpAssocDef CmpAssocDef 

/* do not support ComponentTypeExtension
  syntax CmpTypeExt ::= CmpCategory CmpTypeIdentifier "extends" UniqueCmpTypeRef  CmpAssocDef KeyEnd CmpTypeIdentifier ";"
                    | CmpCategory CmpTypeIdentifier "extends" UniqueCmpTypeRef  ProtoTypeBindings CmpAssocDef KeyEnd CmpTypeIdentifier ";"
  syntax UniqueCmpTypeRef ::= PkgName "::" CmpTypeIdentifier |  CmpTypeIdentifier
*/
endmodule