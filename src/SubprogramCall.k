module SUBPROGRAMCALL-SYNTAX
 
  syntax SubPgmCallSeq ::= CallSequenceId ":" "{" SubPgmCall "}" ";"
                         | CallSequenceId ":" "{" SubPgmCall "}" "{" CallSequencePpeAssoc "}" InModes ";"
						 | CallSequenceId ":" "{" SubPgmCall "}" InModes ";"
  syntax CallSequenceId ::= Id
  syntax SubPgmCall ::= CallId ":" "subprogram" CalledSubPgm ";"
  syntax SubPgmCall ::= CallId ":" "subprogram" CalledSubPgm "{" CallSequencePpeAssoc "}" ";"
  syntax SubPgmCall ::= SubPgmCall SubPgmCall  
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
  syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc 
endmodule