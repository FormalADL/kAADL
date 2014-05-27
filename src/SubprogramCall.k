module SUBPROGRAMCALL-SYNTAX
// 5.2 check
  syntax SubPgmCallSeq ::= CallSequenceId ":" "{" SubprogramCall /* + */ "}" InModes ";"
               |  CallSequenceId ":" "{" SubprogramCall /* + */ "}" "{" CallSequencePpeAssoc /* + */ "}" InModes ";"
    syntax CallSequenceId ::= Id
    syntax SubprogramCall ::= CallId ":" "subprogram" CalledSubprogram ";"
    syntax SubprogramCall ::= CallId ":" "subprogram" CalledSubprogram "{" CallSequencePpeAssoc /* + */"}"";"
    syntax SubprogramCall ::= SubprogramCall SubprogramCall // + 
      syntax CallId ::= Id
      syntax CalledSubprogram ::= SubprogramUniCmpClassifierRef
	      | CmpProtoTypeId
	      | RequiresSubprogramAccessId

              | DataUniCmpTypeRef "." DataProvidesSubprogramAccessId
              | SubprogramGroupUniCmpTypeRef "." ProvidesSubprogramAccessId
              | AbstractUniCmpTypeRef "." ProvidesSubprogramAccessId
	   
	  //  | NODEF "." Id
	  
              | FetGroupId "." RequiresSubprogramAccessId
              | "processor" "." ProvidesSubprogramAccessId
              | SubprogramGoupSubCmpId "." ProvidesSubprogramAccessId
              | RequiresSubprogramGroupAccessId "." ProvidesSubprogramAccessId
	   
	  //  | Id"."Id

	syntax RequiresSubprogramAccessId ::=  Id
	syntax CmpProtoTypeId ::=  Id

	syntax SubprogramUniCmpClassifierRef ::= NODEF
	syntax DataUniCmpTypeRef ::= NODEF
	syntax DataProvidesSubprogramAccessId ::= Id
	syntax SubprogramGroupUniCmpTypeRef ::= NODEF
	syntax ProvidesSubprogramAccessId ::= Id
	syntax AbstractUniCmpTypeRef ::= NODEF
	syntax FetGroupId ::=  Id
	syntax SubprogramGoupSubCmpId ::=  Id
	syntax RequiresSubprogramGroupAccessId ::=  Id

      syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc // +


endmodule