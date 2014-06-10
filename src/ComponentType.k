module COMPONENTTYPE-SYNTAX

  syntax CmpType ::= CmpCategory CmpTypeId "end" CmpTypeId ";"
                   | CmpCategory CmpTypeId CmpAssocDef "end" CmpTypeId ";"
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
                       | "properties" CmpTypePpeAssoc    //not define
                       | "properties" ContainedPpeAssoc
                       | "properties" NoneStatement
					   | CmpAssocDef CmpAssocDef       //here is a bug!
  
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
  
  syntax CmpTypeExt ::= CmpCategory CmpTypeId "extends" UniCmpTypeRef  CmpAssocDef "end" CmpTypeId ";"
                      | CmpCategory CmpTypeId "extends" UniCmpTypeRef  ProtoTypeBindings CmpAssocDef "end" CmpTypeId ";"

  syntax UniCmpTypeRef ::= PkgName "::" CmpTypeId 
                         | CmpTypeId

endmodule