module PACKAGE-SYNTAX
  syntax PkgSpec ::=  Mpackage  PkgName PkgDecls  Mend  PkgName  MSemicolon 
                   |  Mpackage  PkgName PkgDecls PpeDecls  Mend  PkgName  MSemicolon 
  
  syntax PkgId ::= Id
  syntax PkgName ::= PkgId
                   | PkgName  MDoubleColon  PkgId 

  syntax PkgDecls ::=  Mpublic 
                    |  Mprivate 
                    |  Mpublic   Mprivate 
                    |  Mpublic  PkgDeclations 
                    |  Mprivate  PkgDeclations
			        |  Mpublic   Mprivate  PkgDeclations
					|  Mpublic  PkgDeclations  Mprivate  
					|  Mpublic  PkgDeclations  Mprivate  PkgDeclations
					
  syntax PpeDecls ::=  Mproperties  NoneStatement
                    |  Mproperties  BasicPpeAssocList
					
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
  
  syntax ImportDecl ::=  Mwith  PkgName  MSemicolon
                      |  Mwith  PpeSetId MSemicolon
		      | ImportDecl ImportDeclPlus MSemicolon
					  
  syntax ImportDeclPlus ::=  MComma  PkgName 
                          |  MComma  PpeSetId
						  | ImportDeclPlus ImportDeclPlus

  syntax AliasDecl ::= AliasId  Mrenames   Mpackage  PkgName  MSemicolon 
  		     | AliasId  Mrenames  CmpCategory UniCmpTypeRef  MSemicolon 
		     |  Mrenames  CmpCategory UniCmpTypeRef  MSemicolon 
                     | AliasId  Mrenames   Mfeature   Mgroup  UniFetGroupTypeRef  MSemicolon 
                     |  Mrenames   Mfeature   Mgroup  UniFetGroupTypeRef  MSemicolon 
                     |  Mrenames  PkgName  MDoubleColon   Mall   MSemicolon 
					 
  syntax AliasId ::= Id

endmodule

