module SUBPROGRAMCALL-SYNTAX
 
  syntax SubPgmCallSeq ::= CallSequenceId ":" "{" SubProgCall "}" ";"
                         | CallSequenceId ":" "{" SubProgCall "}" "{" CallSequencePpeAssoc "}" InModes ";"
						 | CallSequenceId ":" "{" SubProgCall "}" InModes ";"
  syntax CallSequenceId ::= Id
  syntax SubProgCall ::= CallId ":" "subprogram" CalledSubprogram ";"
  syntax SubProgCall ::= CallId ":" "subprogram" CalledSubprogram "{" CallSequencePpeAssoc "}" ";"
  syntax SubProgCall ::= SubProgCall SubProgCall  
  syntax CallId ::= Id
  syntax CalledSubprogram ::= SubprogramUniCmpClassifierRef
                            | DataUniCmpTypeRef "." DataProvidesSubprogramAccessId
							| SubprogramGroupUniCmpTypeRef "." ProvidesSubprogramAccessId
							| AbstractUniCmpTypeRef "." ProvidesSubprogramAccessId
							| FetGroupId "." RequiresSubprogramAccessId
	                        | CmpProtoTypeId
							| "processor" "." ProvidesSubprogramAccessId
							| SubprogramGoupSubCmpId "." ProvidesSubprogramAccessId
							| RequiresSubprogramGroupAccessId "." ProvidesSubprogramAccessId
	                        | RequiresSubprogramAccessId

  syntax RequiresSubprogramAccessId ::=  Id
  syntax CmpProtoTypeId ::=  Id
  syntax SubprogramUniCmpClassifierRef ::= Id
  syntax DataUniCmpTypeRef ::= Id
  syntax DataProvidesSubprogramAccessId ::= Id
  syntax SubprogramGroupUniCmpTypeRef ::= Id
  syntax ProvidesSubprogramAccessId ::= Id
  syntax AbstractUniCmpTypeRef ::= Id
  syntax FetGroupId ::=  Id
  syntax SubprogramGoupSubCmpId ::=  Id
  syntax RequiresSubprogramGroupAccessId ::=  Id
  syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc 
endmodule