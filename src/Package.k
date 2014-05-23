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
  syntax ImportDecl ::= "with" PkgName ImportDeclPlus | "with" PpeSetIdentifier ImportDeclPlus
  syntax ImportDeclPlus ::= "," PkgName | "," PpeSetIdentifier
  syntax ImportDeclPlus ::= ImportDeclPlus ImportDeclPlus
  syntax PpeSetIdentifier ::= Id
  syntax AliasDecl ::= DefiningIdentifier "renames package" PkgName ";"
        | DefiningIdentifier "renames" CmpCategory UniqueCmpTypeReference ";"
        | DefiningIdentifier "renames" "feartur""group" UniqueFetGroupTypeReference ";"
        | "renames" CmpCategory UniqueCmpTypeReference ";"
        | "renames" "feartur group" UniqueFetGroupTypeReference ";"
        | "renames" PkgName "::" "all" ";"
  syntax DefiningIdentifier ::= Id
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
                    | PpeAssoc
endmodule