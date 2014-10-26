module COMPONENTIMPLEMENTATION-SYNTAX

syntax CmpImpl ::= CmpCategory Mimplementation CmpImplName Mend CmpImplName MSemicolon 
syntax CmpImpl ::= CmpCategory Mimplementation CmpImplName CmpImplAssocDef Mend CmpImplName MSemicolon 
syntax CmpImplName ::= Id MPoint Id 
syntax CmpImplAssocDefElem ::= ProtoTypeBindings 
			| Mprototypes ProtoTypeList 
			| Mprototypes  
			| Msubcomponents SubCmpList 
			| Msubcomponents 
			| Mcalls SubPgmCallSeqList 
			| Mcalls  
			| Mconnections ConnectionList 
			| Mconnections  
			| Mflows FlowImplList 
			| Mflows  
			| ModesSubclause 
			| Mproperties PpeContainedPpeAssocList
			| Mproperties 
			| AnnexSubclause 
syntax CmpImplAssocDef ::= CmpImplAssocDefElem 
			|  CmpImplAssocDefElem CmpImplAssocDef 
syntax SubCmpList ::= SubCmp 
			| SubCmpRefinement 
			| SubCmp SubCmpList 
			| SubCmpRefinement SubCmpList 
syntax SubPgmCallSeqList ::= SubPgmCallSeq 
			| SubPgmCallSeq SubPgmCallSeqList 
syntax ConnectionList ::= Connection 
			| ConnectionRefinement 
			| Connection ConnectionList 
			| ConnectionRefinement ConnectionList 
syntax FlowImplListElem ::= FlowImpl 
			| EndToEndFlowSpec 
			| FlowImplRefinement 
			| EndToEndFlowSpecRefinement 
syntax FlowImplList ::= FlowImplListElem 
			| FlowImplListElem FlowImplList 
syntax CmpImplExt ::= CmpCategory Mimplementation CmpImplName Mextends UniCmpImplRef Mend CmpImplName MSemicolon 
syntax CmpImplExt ::= CmpCategory Mimplementation CmpImplName Mextends UniCmpImplRef CmpImplExtAssocDef Mend CmpImplName MSemicolon 
syntax UniCmpImplRef ::= CmpImplName 
			| PkgName MDoubleColon CmpImplName 
syntax CmpImplExtAssocDefElem ::= ProtoTypeBindings 
			| Mprototypes ProtoTypeList 
			| Mprototypes  
			| Msubcomponents SubCmpList 
			| Msubcomponents  
			| Mcalls SubPgmCallSeqList 
			| Mcalls  
			| Mconnections ConnectionList 
			| Mconnections 
			| Mflows FlowImplList 
			| Mflows  
			| ModesSubclause 
			| Mproperties PpeContainedPpeAssocList
			| Mproperties  
			| AnnexSubclause 
syntax CmpImplExtAssocDef ::= CmpImplExtAssocDefElem 
			| CmpImplExtAssocDefElem CmpImplExtAssocDef 
syntax SubCmpRefinementList ::= SubCmpRefinement 
			| SubCmpRefinement SubCmpRefinementList 
syntax ConnectionRefinementList ::= ConnectionRefinement 
			| ConnectionRefinement ConnectionRefinementList 
syntax ProtoTypeRefinementList ::= ProtoTypeRefinement 
			| ProtoTypeRefinement ProtoTypeRefinementList 
endmodule
