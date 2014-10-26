module COMPONENTTYPE-SYNTAX

syntax CmpType ::= CmpCategory Id Mend Id MSemicolon 
			| CmpCategory Id CmpAssocDef Mend Id MSemicolon 
syntax CmpAssocDefElem ::= Mprototypes ProtoTypeList 
			| Mprototypes  
			| Mfeatures FeatureList 
			| Mfeatures  
			| Mflows FlowSpecList 
			| Mflows  
			| ModesSubclause 
			| RequiresModesSubclause 
			| AnnexSubclause 
			| Mproperties PpeAssocList 
			| Mproperties  
syntax CmpAssocDef ::= CmpAssocDefElem 
			| CmpAssocDefElem CmpAssocDef 
syntax ProtoTypeList ::= ProtoType 
			| ProtoTypeRefinementList 
			| ProtoType ProtoTypeList 
			| ProtoTypeRefinementList ProtoTypeList 
syntax FeatureList ::= Feature 
			| FetRefinement 
			| Feature FeatureList 
			| FetRefinement FeatureList 
syntax FlowSpecList ::= FlowSpec 
			| FlowSpec FlowSpecList 
//syntax CmpTypePpeAssocList ::= PpeAssoc 
//			| PpeAssoc CmpTypePpeAssocList 
//syntax ContainedPpeAssocList ::= ContainedPpeAssoc 
//			| ContainedPpeAssoc ContainedPpeAssocList 
syntax PpeContainedPpeAssocList ::= PpeAssoc
			| ContainedPpeAssoc 
			| PpeAssoc PpeContainedPpeAssocList 
			| ContainedPpeAssoc PpeContainedPpeAssocList 
syntax CmpCategory ::= AbstractCmpCategory 
			| SoftwareCategory 
			| ExecPlateformCategory 
			| CompositeCategory 
syntax AbstractCmpCategory ::= Mabstract 
syntax SoftwareCategory ::= Mdata 
			| Msubprogram 
			| Msubprogram Mgroup 
			| Mthread 
			| Mthread Mgroup 
			| Mprocess 
syntax CompositeCategory ::= Msystem 
syntax ExecPlateformCategory ::= Mmemory 
			| Mprocessor 
			| Mbus 
			| Mdevice 
			| Mvirtual Mprocessor 
			| Mvirtrual Mbus 
syntax CmpTypeExt ::= CmpCategory Id Mextends UniCmpTypeRef Mend Id MSemicolon 
			| CmpCategory Id Mextends UniCmpTypeRef ProtoTypeBindings Mend Id MSemicolon 
			| CmpCategory Id Mextends UniCmpTypeRef CmpAssocDef Mend Id MSemicolon 
			| CmpCategory Id Mextends UniCmpTypeRef ProtoTypeBindings CmpAssocDef Mend Id MSemicolon 
syntax UniCmpTypeRef ::= PkgName MDoubleColon Id 
			| Id 
endmodule
