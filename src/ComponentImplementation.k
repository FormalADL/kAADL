module COMPONENTIMPLEMENTATION-SYNTAX

  syntax CmpImpl ::= CmpCategory  Mimplementation  CmpImplName   Mend  CmpImplName  MSemicolon 
  syntax CmpImpl ::= CmpCategory  Mimplementation  CmpImplName CmpImplAssocDef  Mend  CmpImplName  MSemicolon 
  syntax CmpImplName ::= CmpTypeId  MPoint  CmpImplId
  syntax CmpImplId ::= Id

  syntax CmpImplAssocDef ::= ProtoTypeBindings
                           |  Mprototypes  ProtoTypeList 
//			   |  Mprototypes  ProtoTypeRefinementList
                           |  Mprototypes  NoneStatement 
                           |  Msubcomponents  SubCmpList 
//			   |  Msubcomponents  SubCmpRefinementList
                           |  Msubcomponents  NoneStatement
                           |  Mcalls  SubPgmCallSeqList  
                           |  Mcalls  NoneStatement 
                           |  Mconnections  ConnectionList 
//			   |  Mconnections  ConnectionRefinementList
                           |  Mconnections  NoneStatement 
                           |  Mflows  FlowImplList  
//			   |  Mflows  FlowImplRefinementList 
//                         |  Mflows  EndToEndFlowSpecList  
// 			   |  Mflows  EndToEndFlowSpecRefinementList 
                           |  Mflows  NoneStatement
                           |  ModesSubclause 
                           |  Mproperties  PpeAssocList 
                           |  Mproperties  ContainedPpeAssocList 
                           |  Mproperties  NoneStatement  
	                       | AnnexSubclause						   
  syntax CmpImplAssocDef ::= CmpImplAssocDef CmpImplAssocDef     //the same bug with componenttype define

  syntax SubCmpList ::= SubCmp
                      | SubCmpRefinement
                      | SubCmpList SubCmpList

  syntax SubPgmCallSeqList ::= SubPgmCallSeq
                      | SubPgmCallSeqList SubPgmCallSeqList

  syntax ConnectionList ::= Connection
                      | ConnectionRefinement
                      | ConnectionList ConnectionList

  syntax FlowImplList ::= FlowImpl
                      | EndToEndFlowSpec
                      | FlowImplRefinement
                      | EndToEndFlowSpecRefinement
                      | FlowImplList FlowImplList

//  syntax EndToEndFlowSpecList ::= EndToEndFlowSpec
//                      | EndToEndFlowSpecList EndToEndFlowSpecList
  
 
//Ext have some problem. 
  syntax CmpImplExt ::= CmpCategory  Mimplementation  CmpImplName  Mextends  UniCmpImplRef  Mend  CmpImplName  MSemicolon 
  syntax CmpImplExt ::= CmpCategory  Mimplementation  CmpImplName  Mextends  UniCmpImplRef CmpImplExtAssocDef  Mend  CmpImplName  MSemicolon 
  syntax UniCmpImplRef ::= CmpImplName | PkgName  MDoubleColon  CmpImplName
  
  syntax CmpImplExtAssocDef ::= ProtoTypeBindings
                           |  Mprototypes  ProtoTypeList 
//						   |  Mprototypes  ProtoTypeRefinementList
                           |  Mprototypes  NoneStatement 
                           |  Msubcomponents  SubCmpList
//						   |  Msubcomponents  SubCmpRefinementList
                           |  Msubcomponents  NoneStatement
                           |  Mcalls  SubPgmCallSeqList 
                           |  Mcalls  NoneStatement 
                           |  Mconnections  ConnectionList
//						   |  Mconnections  ConnectionRefinementList
                           |  Mconnections  NoneStatement 
                           |  Mflows  FlowImplList 
//			   |  Mflows  FlowImplRefinementList 
//                           |  Mflows  EndToEndFlowSpecList 
//			   |  Mflows  EndToEndFlowSpecRefinementList 
                           |  Mflows  NoneStatement
                           |  ModesSubclause 
	                   |  Mproperties  PpeAssocList
                           |  Mproperties  ContainedPpeAssocList
                           |  Mproperties  NoneStatement         
						   | AnnexSubclause						   
  syntax CmpImplExtAssocDef ::= CmpImplExtAssocDef CmpImplExtAssocDef     //the same bug with componenttype define
  
  syntax SubCmpRefinementList ::= SubCmpRefinement
                      | SubCmpRefinementList SubCmpRefinementList  
 
  syntax ConnectionRefinementList ::= ConnectionRefinement
                      | ConnectionRefinementList ConnectionRefinementList 
 
  syntax ProtoTypeRefinementList ::= ProtoTypeRefinement
                      | ProtoTypeRefinementList ProtoTypeRefinementList 
 
//  syntax FlowImplRefinementList ::= FlowImplRefinement
//                      | FlowImplRefinementList FlowImplRefinementList 
 
//  syntax EndToEndFlowSpecRefinementList ::= EndToEndFlowSpecRefinement
 //                     | EndToEndFlowSpecRefinementList EndToEndFlowSpecRefinementList  
//--------------------------------------------------------------------------------------------------------------------
/*
  syntax FlowSpecLists ::= FlowImpl
                       | EndToEndFlowSpec
                       | FlowSpecLists FlowSpecLists

  syntax SubCmpDef ::=  Msubcomponents  SubCmpList 
                       |  Msubcomponents  NoneStatement

  syntax SubPgmCallSeqDef ::=  Mcalls  SubPgmCallSeqList  
                             |  Mcalls  NoneStatement

  syntax ConnectionDef ::=  Mconnections  ConnectionList 
                          |  Mconnections  NoneStatement 
                          
  syntax FlowSpecDefs ::=  Mflows  FlowImplList  
                        |  Mflows  EndToEndFlowSpecList  
                        |  Mflows  NoneStatement                       

  syntax CmpImpl ::= CmpCategory  Mimplementation  CmpImplName   Mend  CmpImplName  MSemicolon 
                   | CmpCategory  Mimplementation  CmpImplName  ProtoTypeBindings Mend  CmpImplName  MSemicolon 
                   | CmpCategory  Mimplementation  CmpImplName CmpImplAssocDef  Mend  CmpImplName  MSemicolon 
                   | CmpCategory  Mimplementation  CmpImplName ProtoTypeBindings CmpImplAssocDef  Mend  CmpImplName  MSemicolon 

  syntax CmpImplExt ::= CmpCategory  Mimplementation  CmpImplName  Mextends  UniCmpImplRef  Mend  CmpImplName  MSemicolon 
                      | CmpCategory  Mimplementation  CmpImplName  Mextends  UniCmpImplRef ProtoTypeBindings  Mend  CmpImplName  MSemicolon 
                      | CmpCategory  Mimplementation  CmpImplName  Mextends  UniCmpImplRef CmpImplExtAssocDef  Mend  CmpImplName  MSemicolon 
                      | CmpCategory  Mimplementation  CmpImplName  Mextends  UniCmpImplRef ProtoTypeBindings CmpImplExtAssocDef  Mend  CmpImplName  MSemicolon 

// ProtoTypeDef SubCmpDef SubPgmCallSeqDef ConnectionDef FlowSpecDefs  ModesSubclause PpeAssocDef AnnexSubclause
  
   syntax CmpImplAssocDef ::= ProtoTypeDef
                            | SubCmpDef 
                            | SubPgmCallSeqDef 
                            | ConnectionDef 
                            | FlowSpecDefs  
                            | ModesSubclause 
                            | PpeAssocDef 
 */                           | AnnexSubclause
//-------------------------------------------------------------------------------------------------------------------- 
 
 
 
 
 
  
  
  
  
  
  
  
endmodule
