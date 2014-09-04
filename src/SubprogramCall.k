module SUBPROGRAMCALL-SYNTAX
 
  syntax SubPgmCallSeq ::= CallSequenceId ":" "{" SubPgmCallList "}" ";"
                         | CallSequenceId ":" "{" SubPgmCallList "}" "{" CallSequencePpeAssocList "}" ";"
						 | CallSequenceId ":" "{" SubPgmCallList "}" InModes ";"
                         | CallSequenceId ":" "{" SubPgmCallList "}" "{" CallSequencePpeAssocList "}" InModes ";"	
                         
  syntax SubPgmCallList ::= SubPgmCall
                          | SubPgmCallList SubPgmCallList                      
                         
  syntax CallSequencePpeAssocList ::= PpeAssoc
                          | CallSequencePpeAssocList CallSequencePpeAssocList                         
                                                 				
  syntax CallSequenceId ::= Id
  syntax SubPgmCall ::= CallId ":" "subprogram" CalledSubPgm ";"
  syntax SubPgmCall ::= CallId ":" "subprogram" CalledSubPgm "{" SubPgmCallPpeAssocList "}" ";"
  
  syntax SubPgmCallPpeAssocList ::= PpeAssoc
                                  | SubPgmCallPpeAssocList SubPgmCallPpeAssocList
//  syntax SubPgmCall ::= SubPgmCall SubPgmCall  
  syntax CallId ::= Id
  syntax CalledSubPgm ::= SubPgmUniCmpClassifierRef
                            | DataUniCmpTypeRef "." DataProvidesSubPgmAccessId
							| SubPgmGroupUniCmpTypeRef "." ProvidesSubPgmAccessId
							| AbstractUniCmpTypeRef "." ProvidesSubPgmAccessId
							| FetGroupId "." RequiresSubPgmAccessId
	                        | CmpProtoTypeId
							| "processor" "." ProvidesSubPgmAccessId
							| SubPgmGoupSubCmpId "." ProvidesSubPgmAccessId
							| RequiresSubPgmGroupAccessId "." ProvidesSubPgmAccessId
	                        | RequiresSubPgmAccessId

  syntax RequiresSubPgmAccessId ::=  Id
  syntax CmpProtoTypeId ::=  Id
  syntax SubPgmUniCmpClassifierRef ::= Id
  syntax DataUniCmpTypeRef ::= Id
  syntax DataProvidesSubPgmAccessId ::= Id
  syntax SubPgmGroupUniCmpTypeRef ::= Id
  syntax ProvidesSubPgmAccessId ::= Id
  syntax AbstractUniCmpTypeRef ::= Id
  syntax FetGroupId ::=  Id
  syntax SubPgmGoupSubCmpId ::=  Id
  syntax RequiresSubPgmGroupAccessId ::=  Id
//  syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc 
endmodule