module SUBPROGRAMCALL-SYNTAX
 
  syntax SubPgmCallSeq ::= CallSequenceId  Mcolon   MBraceLeft  SubPgmCallList  MBraceRight   MSemicolon 
                         | CallSequenceId  Mcolon   MBraceLeft  SubPgmCallList  MBraceRight   MBraceLeft  CallSequencePpeAssocList  MBraceRight   MSemicolon 
						 | CallSequenceId  Mcolon   MBraceLeft  SubPgmCallList  MBraceRight  InModes  MSemicolon 
                         | CallSequenceId  Mcolon   MBraceLeft  SubPgmCallList  MBraceRight   MBraceLeft  CallSequencePpeAssocList  MBraceRight  InModes  MSemicolon 	
                         
  syntax SubPgmCallList ::= SubPgmCall
                          | SubPgmCallList SubPgmCallList                      
                         
  syntax CallSequencePpeAssocList ::= PpeAssoc
                          | CallSequencePpeAssocList CallSequencePpeAssocList                         
                                                 				
  syntax CallSequenceId ::= Id
  syntax SubPgmCall ::= CallId  Mcolon   Msubprogram  CalledSubPgm  MSemicolon 
  syntax SubPgmCall ::= CallId  Mcolon   Msubprogram  CalledSubPgm  MBraceLeft  SubPgmCallPpeAssocList  MBraceRight   MSemicolon 
  
  syntax SubPgmCallPpeAssocList ::= PpeAssoc
                                  | SubPgmCallPpeAssocList SubPgmCallPpeAssocList
//  syntax SubPgmCall ::= SubPgmCall SubPgmCall  
  syntax CallId ::= Id
  syntax CalledSubPgm ::= SubPgmUniCmpClassifierRef
                            | DataUniCmpTypeRef  MPoint  DataProvidesSubPgmAccessId
							| SubPgmGroupUniCmpTypeRef  MPoint  ProvidesSubPgmAccessId
							| AbstractUniCmpTypeRef  MPoint  ProvidesSubPgmAccessId
							| FetGroupId  MPoint  RequiresSubPgmAccessId
	                        | CmpProtoTypeId
							|  Mprocessor   MPoint  ProvidesSubPgmAccessId
							| SubPgmGoupSubCmpId  MPoint  ProvidesSubPgmAccessId
							| RequiresSubPgmGroupAccessId  MPoint  ProvidesSubPgmAccessId
	                        | RequiresSubPgmAccessId

  syntax RequiresSubPgmAccessId ::=  Id
  syntax CmpProtoTypeId ::=  Id
  syntax SubPgmUniCmpClassifierRef ::= Id
  syntax DataUniCmpTypeRef ::= Id
  syntax DataProvidesSubPgmAccessId ::= Id
  syntax SubPgmGroupUniCmpTypeRef ::= Id
  syntax ProvidesSubPgmAccessId ::= Id
  syntax AbstractUniCmpTypeRef ::= Id
  syntax SubPgmGoupSubCmpId ::=  Id
  syntax RequiresSubPgmGroupAccessId ::=  Id
//  syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc 
endmodule

