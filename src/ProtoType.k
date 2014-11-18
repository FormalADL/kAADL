module PROTOTYPE-SYNTAX

syntax ProtoType ::=  Id Mcolon ProtoTypeDef MBraceLeft ProtoTypePpeAssocList MBraceRight MSemicolon
			| Id Mcolon FetGroupTypeProtoType MSemicolon 
			| Id Mcolon FetProtoType MSemicolon  
			| Id Mcolon CmpCategory MDoubleBracket MSemicolon 
			| Id Mcolon AbstractCmpCategory UniCmpClassifierRef MSemicolon 
			| Id Mcolon ExecPlateformCategory UniCmpClassifierRef MSemicolon 
			| Id Mcolon CompositeCategory UniCmpClassifierRef MSemicolon 
			| Id Mcolon Mdata UniCmpClassifierRef MSemicolon 
			| Id Mcolon  Msubprogram Mgroup UniCmpClassifierRef MSemicolon
			| Id Mcolon  Mthread UniCmpClassifierRef MSemicolon 
			| Id Mcolon  Mthread Mgroup UniCmpClassifierRef MSemicolon 
			| Id Mcolon  Mprocess UniCmpClassifierRef MSemicolon
			| Id Mcolon Msubprogram Id MPoint Id MSemicolon
			| Id Mcolon Msubprogram Id MDoubleColon PkgName MSemicolon 
			| Id Mcolon Msubprogram PkgName MDoubleColon AmbIdPointId MSemicolon
			| Id Mcolon  CmpCategory UniCmpClassifierRef MDoubleBracket MSemicolon 
			| AmbIdColonCmpCategorySemicolon 

syntax ProtoTypePpeAssocList ::= PpeAssoc 
			| PpeAssoc ProtoTypePpeAssocList 
syntax ProtoTypePpeAssoc ::= PpeAssoc 
			| PpeAssoc ProtoTypePpeAssoc 
syntax ProtoTypeDef ::= CmpProtoType 
			| FetGroupTypeProtoType 
			| FetProtoType 
syntax CmpProtoType ::= CmpCategory 
			| CmpCategory MDoubleBracket 
			| AmbCmpCategoryUniCmpClassifierRef 
			| CmpCategory UniCmpClassifierRef MDoubleBracket 


syntax FetGroupTypeProtoType ::= Mfeature Mgroup 
			| AmbFeatureGroupUniFetGroupTypeRef 

syntax FetProtoType ::= Mfeature 
			| Min Mfeature 
			| Mout Mfeature 
			| Min Mfeature UniCmpClassifierRef 
			| Mout Mfeature UniCmpClassifierRef 
			| Mfeature UniCmpClassifierRef 
syntax ProtoTypeRefinement ::= Id Mcolon Mrefined Mto ProtoTypeDef MSemicolon 
			| Id Mcolon Mrefined Mto ProtoTypeDef MBraceLeft ProtoTypePpeAssoc MBraceRight MSemicolon 
syntax ProtoTypeBindings ::= MBracketLeft ProtoTypeBinding MBracketRight 
syntax ProtoTypeBinding ::= ProtoTypeBinding MComma ProtoTypeBinding 
syntax ProtoTypeBinding ::= Id MRoughArrow CmpProtoTypeActual 
			| Id MRoughArrow CmpProtoTypeActualList 
			| Id MRoughArrow FetGroupTypeProtoTypeActual 
			| Id MRoughArrow FetProtoTypeActual 
syntax CmpProtoTypeActual ::= CmpCategory UniCmpClassifierRef ProtoTypeBindings 
			| AmbCmpCategoryUniCmpClassifierRef 
			| CmpCategory Id 
syntax CmpProtoTypeActuralListTmp ::= CmpProtoTypeActual 
syntax CmpProtoTypeActuralListTmp ::= CmpProtoTypeActual MComma CmpProtoTypeActual 
syntax CmpProtoTypeActualList ::= MBracketLeft CmpProtoTypeActuralListTmp MBracketRight 



syntax FetGroupTypeProtoTypeActual ::= AmbFeatureGroupUniFetGroupTypeRef 
			| Mfeature Mgroup UniFetGroupTypeRef ProtoTypeBindings 
			| Mfeature Mgroup Id 


syntax FetProtoTypeActual ::= InOut EventData Mport 
			| InOut EventData Mport UniCmpClassifierRef 
			| Require BusDataSubPgm Maccess 
			| Require BusDataSubPgm Maccess UniCmpClassifierRef 
			| Min Mfeature Id 
			| Mout Mfeature Id 
syntax InOut ::= Min 
			| Mout 
			| Min Mout 
syntax EventData ::= Mevent 
			| Mdata 
			| Mevent Mdata 
syntax Require ::= Mrequires 
			| Mprovides 
syntax BusDataSubPgm ::= Mbus 
			| Mdata 
			| Msubprogram Mgroup 
			| Msubprogram 
endmodule
