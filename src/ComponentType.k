module COMPONENTTYPE-SYNTAX

  syntax CmpType ::= CmpCategory CmpTypeId KeyEnd CmpTypeId ";"
                   | CmpCategory CmpTypeId CmpAssocDef KeyEnd CmpTypeId ";"

  syntax CmpCategory ::= AbstractCmpCategory 
                       | SoftwareCategory 
//					   | ExecutionPlateformCategory 
					   | CompositeCategory
  syntax AbstractCmpCategory ::= "abstract"
  syntax SoftwareCategory ::= "data" | "subprogram" | "subprogram" "group" | "thread" | "thread" "group" | "process"
  syntax CompositeCategory ::= "system"
  
/*do not support hardware component*/
//  syntax ExecutionPlateformCategory ::= "memory" | "processor" | "bus" | "device" | "virtual" "processor" | "virtrual bus" 
  
  syntax CmpTypeId ::= Id

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
  syntax CmpTypeExt ::= CmpCategory CmpTypeId "extends" UniCmpTypeRef  CmpAssocDef KeyEnd CmpTypeId ";"
                    | CmpCategory CmpTypeId "extends" UniCmpTypeRef  ProtoTypeBindings CmpAssocDef KeyEnd CmpTypeId ";"
*/
  syntax UniCmpTypeRef ::= PkgName "::" CmpTypeId |  CmpTypeId

endmodule