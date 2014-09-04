module PACKAGE-SYNTAX
  syntax PkgSpec ::= "package" PkgName PkgDecls "end" PkgName ";"
                   | "package" PkgName PkgDecls PpeDecls "end" PkgName ";"
  
  syntax PkgId ::= Id
  syntax PkgName ::= PkgId
                   | PkgName "::" PkgId 

  syntax PkgDecls ::= "public"
                    | "private"
                    | "public" "private"
                    | "public" PkgDeclations 
                    | "private" PkgDeclations
			        | "public" "private" PkgDeclations
					| "public" PkgDeclations "private" 
					| "public" PkgDeclations "private" PkgDeclations
					
  syntax PpeDecls ::= "properties" NoneStatement
                    | "properties" BasicPpeAssocList
					
  syntax BasicPpeAssocList ::= PpeAssoc
                      | BasicPpeAssocList BasicPpeAssocList
					
  syntax PkgDeclations ::= AADLDeclList
                         | NameVisDeclList 
          
  syntax AADLDeclList ::= AADLDecl 
						| AADLDeclList AADLDeclList
						
  syntax NameVisDeclList ::= NameVisDecl 
						   | NameVisDeclList NameVisDeclList	
						
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
					   
  syntax NameVisDecl ::= ImportDecl | AliasDecl
  
  syntax ImportDecl ::= "with" PkgName  
                      | "with" PpeSetId
					  | ImportDecl ImportDeclPlus
					  
  syntax ImportDeclPlus ::= "," PkgName 
                          | "," PpeSetId
						  | ImportDeclPlus ImportDeclPlus

  syntax AliasDecl ::= AliasId "renames" "package" PkgName ";"
  				     | AliasId "renames" CmpCategory UniCmpTypeRef ";"
				     | "renames" CmpCategory UniCmpTypeRef ";"
                     | AliasId "renames" "feature" "group" UniFetGroupTypeRef ";"
                     | "renames" "feature" "group" UniFetGroupTypeRef ";"
                     | "renames" PkgName "::" "all" ";"
					 
  syntax AliasId ::= Id

endmodule
