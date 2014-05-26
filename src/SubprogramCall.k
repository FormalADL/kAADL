module SUBPROGRAMCALL-SYNTAX
// 5.2 check
  syntax SubPgmCallSeq ::= CallSequenceId ":" "{" SubprogramCall /* + */ "}" InModes ";"
               |  CallSequenceId ":" "{" SubprogramCall /* + */ "}" "{" CallSequencePpeAssoc /* + */ "}" InModes ";"
    syntax CallSequenceId ::= Id
    syntax SubprogramCall ::= CallId ":" "subprogram" CalledSubprogram ";"
    syntax SubprogramCall ::= CallId ":" "subprogram" CalledSubprogram "{" CallSequencePpeAssoc /* + */"}"";"
      syntax CallId ::= Id
      syntax CalledSubprogram ::= SubprogramUniCmpClassifierRef
              | DataUniCmpTypeRef "." DataProvidesSubprogramAccessId
              | SubprogramGroupUniCmpTypeRef "." ProvidesSubprogramAccessId
              | AbstractUniCmpTypeRef "." ProvidesSubprogramAccessId
              | FetGroupId "." RequiresSubprogramAccessId
              | CmpProtoTypeId
              | "processor" "." ProvidesSubprogramAccessId
              | SubprogramGoupSubCmpId "." ProvidesSubprogramAccessId
              | RequiresSubprogramAccessId
              | RequiresSubprogramGroupAccessId "." ProvidesSubprogramAccessId
        syntax SubprogramUniCmpClassifierRef ::= NODEF
        syntax DataUniCmpTypeRef ::= NODEF
        syntax DataProvidesSubprogramAccessId ::= Id
        syntax SubprogramGroupUniCmpTypeRef ::= NODEF
        syntax ProvidesSubprogramAccessId ::= Id
        syntax AbstractUniCmpTypeRef ::= NODEF
        syntax FetGroupId ::=  Id
        syntax RequiresSubprogramAccessId ::=  Id
        syntax CmpProtoTypeId ::=  Id
        syntax SubprogramGoupSubCmpId ::=  Id
        syntax RequiresSubprogramGroupAccessId ::=  Id
      syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc // +


endmodule