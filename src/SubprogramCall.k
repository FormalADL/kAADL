module SUBPROGRAMCALL-SYNTAX
// 5.2 check
  syntax SubPgmCallSeq ::= CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" InModes ";"
               |  CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" "{" CallSequencePpeAssoc /* + */ "}" InModes ";"
    syntax CallSequenceIdentifier ::= Id
    syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram ";"
    syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram "{" CallSequencePpeAssoc /* + */"}"";"
      syntax CallIdentifier ::= Id
      syntax CalledSubprogram ::= SubprogramUniqueCmpClassifierRef
              | DataUniqueCmpTypeRef "." DataProvidesSubprogramAccessIdentifier
              | SubprogramGroupUniqueCmpTypeRef "." ProvidesSubprogramAccessIdentifier
              | AbstractUniqueCmpTypeRef "." ProvidesSubprogramAccessIdentifier
              | FetGroupIdentifier "." RequiresSubprogramAccessIdentifier
              | CmpProtoTypeIdentifier
              | "processor" "." ProvidesSubprogramAccessIdentifier
              | SubprogramGoupSubCmpIdentifier "." ProvidesSubprogramAccessIdentifier
              | RequiresSubprogramAccessIdentifier
              | RequiresSubprogramGroupAccessIdentifier "." ProvidesSubprogramAccessIdentifier
        syntax SubprogramUniqueCmpClassifierRef ::= NODEF
        syntax DataUniqueCmpTypeRef ::= NODEF
        syntax DataProvidesSubprogramAccessIdentifier ::= Id
        syntax SubprogramGroupUniqueCmpTypeRef ::= NODEF
        syntax ProvidesSubprogramAccessIdentifier ::= Id
        syntax AbstractUniqueCmpTypeRef ::= NODEF
        syntax FetGroupIdentifier ::=  Id
        syntax RequiresSubprogramAccessIdentifier ::=  Id
        syntax CmpProtoTypeIdentifier ::=  Id
        syntax SubprogramGoupSubCmpIdentifier ::=  Id
        syntax RequiresSubprogramGroupAccessIdentifier ::=  Id
      syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc // +


endmodule