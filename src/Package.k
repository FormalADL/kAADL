module PACKAGE-SYNTAX
  syntax PkgSpec ::= KeyPkg PkgName PkgDecls KeyEnd PkgName ";"
                   | KeyPkg PkgName PkgDecls PpeDecls KeyEnd PkgName ";"
  
  syntax PkgId ::= Id
  syntax PkgName ::= PkgId
                   | PkgId "::" PkgId 

  syntax PkgDecls ::= KeyPublic PkgDeclations 
                    | KeyPrivate PkgDeclations
			        | KeyPublic PkgDeclations KeyPrivate PkgDeclations
					
 // currently version do not support NameVisDecList,only support the AADLDecList 
 
  syntax PkgDeclations ::= NoneStatement
                         | AADLDeclList
 //                      | NameVisDeclList 
   
       
 /* NameVisDecl related definition
  syntax NameVisDeclList ::= NameVisDecl 
						   | NameVisDecl NameVisDeclList					
  syntax NameVisDecl ::= ImportDecl | AliasDecl
  syntax ImportDecl ::= "with" PkgName ImportDeclPlus | "with" PpeSetId ImportDeclPlus
  syntax ImportDeclPlus ::= "," PkgName | "," PpeSetId
  syntax ImportDeclPlus ::= ImportDeclPlus ImportDeclPlus
  syntax PpeSetId ::= Id
  syntax AliasDecl ::= DefiningId "renames" "package" PkgName ";"
        | DefiningId "renames" CmpCategory UniCmpTypeReference ";"
        | DefiningId "renames" "feartur""group" UniFetGroupTypeReference ";"
        | "renames" CmpCategory UniCmpTypeReference ";"
        | "renames" "feartur group" UniFetGroupTypeReference ";"
        | "renames" PkgName "::" "all" ";"
  syntax DefiningId ::= Id
 */ 
 
  syntax AADLDeclList ::= AADLDecl 
						| AADLDecl AADLDeclList
  syntax AADLDecl ::= ClassifierDecl 
                    | AnnexLibrary
  syntax ClassifierDecl ::= CmpClassifierDecl 
                          | FetGroupClassifierDecl

/* 
  we do not support component type and implementation extension in first version
*/
  syntax CmpClassifierDecl ::= CmpType 
                             | CmpImpl 
//                           | CmpTypeExt 
//                           | CmpImplExt

/* we do not support FetGrouptypeExt
*/
  syntax FetGroupClassifierDecl ::= FetGroupType 
//                                | FetGroupTypeExt

  syntax PpeDecls ::= NoneStatement
//                  | PpeAssoc
endmodule