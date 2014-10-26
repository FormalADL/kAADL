module PACKAGE-SYNTAX

syntax PkgSpec ::= Mpackage PkgName PkgDecls Mend PkgName MSemicolon 
			| Mpackage PkgName PkgDecls PpeDecls Mend PkgName MSemicolon 
syntax PkgName ::= Id 
			| PkgName MDoubleColon Id 
syntax PkgDecls ::= Mpublic 
			| Mprivate 
			| Mpublic Mprivate 
			| Mpublic PkgDeclations 
			| Mprivate PkgDeclations 
			| Mpublic Mprivate PkgDeclations 
			| Mpublic PkgDeclations Mprivate 
			| Mpublic PkgDeclations Mprivate PkgDeclations 
syntax PpeDecls ::= Mproperties NoneStatement 
			| Mproperties BasicPpeAssocList 
syntax BasicPpeAssocList ::= PpeAssoc 
			| PpeAssoc BasicPpeAssocList 
syntax PkgDeclations ::= AADLDeclList 
			| NameVisDeclList 
			| AADLDeclList PkgDeclations 
			| NameVisDeclList PkgDeclations
syntax AADLDeclList ::= AADLDecl 
syntax NameVisDeclList ::= NameVisDecl 
syntax AADLDecl ::= ClassifierDecl 
			| AnnexLibrary 
syntax ClassifierDecl ::= CmpClassifierDecl 
			| FetGroupClassifierDecl 
syntax CmpClassifierDecl ::= CmpType 
			| CmpImpl 
			| CmpTypeExt 
			| CmpImplExt 
syntax FetGroupClassifierDecl ::= FetGroupType 
			| FetGroupTypeExt 
syntax NameVisDecl ::= ImportDecl 
			| AliasDecl 
syntax ImportDecls ::= PkgName 
			| Id 
			| PkgName ImportDeclPlus
			| Id ImportDeclPlus
syntax ImportDeclPlus ::= MComma PkgName 
		//	| MComma Id 
			| MComma PkgName  ImportDeclPlus 
		//	| MComma Id ImportDeclPlus 
syntax ImportDecl ::= Mwith ImportDecls MSemicolon 
syntax AliasDecl ::= Id Mrenames Mpackage PkgName MSemicolon 
		        | Id Mrenames CmpCategory UniCmpTypeRef MSemicolon 
		        | Mrenames CmpCategory UniCmpTypeRef MSemicolon 
		        | Id Mrenames Mfeature Mgroup UniFetGroupTypeRef MSemicolon 
		        | Mrenames Mfeature Mgroup UniFetGroupTypeRef MSemicolon 
			| Mrenames PkgName MDoubleColon Mall MSemicolon 
endmodule
