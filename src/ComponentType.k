module COMPONENTTYPE-SYNTAX

syntax CmpType ::= CmpCategory Id Mend Id MSemicolon 
			| CmpCategory Id CmpAssocDef Mend Id MSemicolon 
syntax CmpAssocDef ::= Mprototypes ProtoTypeList 
			| Mprototypes NoneStatement 
			| Mfeatures FeatureList 
			| Mfeatures NoneStatement 
			| Mflows FlowSpecList 
			| Mflows NoneStatement 
			| ModesSubclause 
			| RequiresModesSubclause 
			| AnnexSubclause 
			| Mproperties PpeAssocList 
			| Mproperties NoneStatement 
			| CmpAssocDef CmpAssocDef 
syntax ProtoTypeList ::= ProtoType 
			| ProtoTypeRefinementList 
			| ProtoTypeList ProtoTypeList 
syntax FeatureList ::= Feature 
			| FetRefinement 
			| FeatureList FeatureList 
syntax FlowSpecList ::= FlowSpec 
			| FlowSpecList FlowSpecList 
syntax CmpTypePpeAssocList ::= PpeAssoc 
			| CmpTypePpeAssocList CmpTypePpeAssocList 
syntax ContainedPpeAssocList ::= ContainedPpeAssoc 
			| ContainedPpeAssocList ContainedPpeAssocList 
syntax PpeAssocList ::= CmpTypePpeAssocList |ContainedPpeAssocList 
			| PpeAssocList PpeAssocList 
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
