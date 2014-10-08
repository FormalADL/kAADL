module PROTOTYPE-SYNTAX

  syntax ProtoType ::= ProtoTypeId  Mcolon  ProtoTypeDef  MSemicolon 
                     | ProtoTypeId  Mcolon  ProtoTypeDef  MBraceLeft  ProtoTypePpeAssocList  MBraceRight   MSemicolon 
  
  syntax ProtoTypePpeAssocList ::= PpeAssoc
                                 | ProtoTypePpeAssocList ProtoTypePpeAssocList

   syntax ProtoTypePpeAssoc ::= PpeAssoc
                             | ProtoTypePpeAssoc ProtoTypePpeAssoc
					 
  syntax ProtoTypeId ::= Id
  
  syntax ProtoTypeDef ::= CmpProtoType 
                        | FetGroupTypeProtoType
                        | FetProtoType

							 
  syntax CmpProtoType ::= CmpCategory
                        | CmpCategory  MDoubleBracket 
                        | CmpCategory UniCmpClassifierRef
                        | CmpCategory UniCmpClassifierRef  MDoubleBracket 
  
  syntax FetGroupTypeProtoType ::=  Mfeature   Mgroup  
                                 |  Mfeature   Mgroup  UniFetGroupTypeRef

  syntax FetProtoType ::=  Mfeature 
                        |  Min   Mfeature 
                        |  Mout   Mfeature 
                        |  Min   Mfeature  UniCmpClassifierRef
                        |  Mout   Mfeature  UniCmpClassifierRef
                        |  Mfeature  UniCmpClassifierRef

  syntax ProtoTypeRefinement ::= ProtoTypeId  Mcolon   Mrefined   Mto  ProtoTypeDef  MSemicolon 
                               | ProtoTypeId  Mcolon   Mrefined   Mto  ProtoTypeDef  MBraceLeft  ProtoTypePpeAssoc  MBraceRight   MSemicolon 
							   
  syntax ProtoTypeBindings ::=  MBracketLeft  ProtoTypeBinding  MBracketRight 
  syntax ProtoTypeBinding ::= ProtoTypeBinding  MComma  ProtoTypeBinding
  
  syntax ProtoTypeBinding ::= ProtoTypeId  MRoughArrow  CmpProtoTypeActual
                            | ProtoTypeId  MRoughArrow  CmpProtoTypeActualList
                            | ProtoTypeId  MRoughArrow  FetGroupTypeProtoTypeActual
                            | ProtoTypeId  MRoughArrow  FetProtoTypeActual
							
  syntax CmpProtoTypeActual ::= CmpCategory UniCmpClassifierRef ProtoTypeBindings
                              | CmpCategory UniCmpClassifierRef
                              | CmpCategory ProtoTypeId
							  
  syntax CmpProtoTypeActuralListTmp ::= CmpProtoTypeActual
  syntax CmpProtoTypeActuralListTmp ::= CmpProtoTypeActual  MComma  CmpProtoTypeActual
  syntax CmpProtoTypeActualList ::=  MBracketLeft  CmpProtoTypeActuralListTmp  MBracketRight 
  
  syntax FetGroupTypeProtoTypeActual ::=  Mfeature   Mgroup  UniFetGroupTypeRef
                                       |  Mfeature   Mgroup  UniFetGroupTypeRef ProtoTypeBindings
                                       |  Mfeature   Mgroup  FetGroupTypeProtoTypeId
  syntax FetGroupTypeProtoTypeId ::= Id
  syntax FetProtoTypeActual ::= InOut EventData  Mport 
                              | InOut EventData  Mport  UniCmpClassifierRef
							  | Require BusDataSubPgm  Maccess 
                              | Require BusDataSubPgm  Maccess  UniCmpClassifierRef
							  |  Min   Mfeature  FetProtoTypeId
                              |  Mout   Mfeature  FetProtoTypeId
							  
  syntax InOut ::=  Min  |  Mout  |  Min   Mout 
  syntax EventData ::=  Mevent  |  Mdata  |  Mevent   Mdata 
  syntax Require ::=  Mrequires  |  Mprovides 
  syntax BusDataSubPgm ::=  Mbus  |  Mdata  |  Msubprogram   Mgroup  |  Msubprogram 
  
endmodule
