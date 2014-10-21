module COMPONENTIMPLEMENTATION-SYNTAX

syntax CmpImpl ::= CmpCategory Mimplementation CmpImplName Mend CmpImplName MSemicolon 
syntax CmpImpl ::= CmpCategory Mimplementation CmpImplName CmpImplAssocDef Mend CmpImplName MSemicolon 
syntax CmpImplName ::= Id MPoint Id 
syntax CmpImplAssocDef ::= ProtoTypeBindings 
			| Mprototypes ProtoTypeList 
			| Mprototypes NoneStatement 
			| Msubcomponents SubCmpList 
			| Msubcomponents NoneStatement 
			| Mcalls SubPgmCallSeqList 
			| Mcalls NoneStatement 
			| Mconnections ConnectionList 
			| Mconnections NoneStatement 
			| Mflows FlowImplList 
			| Mflows NoneStatement 
			| ModesSubclause 
			| Mproperties PpeAssocList 
			| Mproperties ContainedPpeAssocList 
			| Mproperties NoneStatement 
			| AnnexSubclause 
syntax CmpImplAssocDef ::= CmpImplAssocDef CmpImplAssocDef 
syntax SubCmpList ::= SubCmp 
			| SubCmpRefinement 
			| SubCmpList SubCmpList 
syntax SubPgmCallSeqList ::= SubPgmCallSeq 
			| SubPgmCallSeqList SubPgmCallSeqList 
syntax ConnectionList ::= Connection 
			| ConnectionRefinement 
			| ConnectionList ConnectionList 
syntax FlowImplList ::= FlowImpl 
			| EndToEndFlowSpec 
			| FlowImplRefinement 
			| EndToEndFlowSpecRefinement 
			| FlowImplList FlowImplList 
syntax CmpImplExt ::= CmpCategory Mimplementation CmpImplName Mextends UniCmpImplRef Mend CmpImplName MSemicolon 
syntax CmpImplExt ::= CmpCategory Mimplementation CmpImplName Mextends UniCmpImplRef CmpImplExtAssocDef Mend CmpImplName MSemicolon 
syntax UniCmpImplRef ::= CmpImplName 
			| PkgName MDoubleColon CmpImplName 
syntax CmpImplExtAssocDef ::= ProtoTypeBindings 
			| Mprototypes ProtoTypeList 
			| Mprototypes NoneStatement 
			| Msubcomponents SubCmpList 
			| Msubcomponents NoneStatement 
			| Mcalls SubPgmCallSeqList 
			| Mcalls NoneStatement 
			| Mconnections ConnectionList 
			| Mconnections NoneStatement 
			| Mflows FlowImplList 
			| Mflows NoneStatement 
			| ModesSubclause 
			| Mproperties PpeAssocList 
			| Mproperties ContainedPpeAssocList 
			| Mproperties NoneStatement 
			| AnnexSubclause 
syntax CmpImplExtAssocDef ::= CmpImplExtAssocDef CmpImplExtAssocDef 
syntax SubCmpRefinementList ::= SubCmpRefinement 
			| SubCmpRefinementList SubCmpRefinementList 
syntax ConnectionRefinementList ::= ConnectionRefinement 
			| ConnectionRefinementList ConnectionRefinementList 
syntax ProtoTypeRefinementList ::= ProtoTypeRefinement 
			| ProtoTypeRefinementList ProtoTypeRefinementList 
endmodule
