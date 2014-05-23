module SUBPROGRAMCALL-SYNTAX
// 5.2 check
  syntax SubprogramCallSequence ::= CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" InModes ";"
               |  CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" "{" CallSequencePpeAssoc /* + */ "}" InModes ";"
    syntax CallSequenceIdentifier ::= Id
    syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram ";"
    syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram "{" CallSequencePpeAssoc /* + */"}"";"
      syntax CallIdentifier ::= Id
      syntax CalledSubprogram ::= SubprogramUniqueCmpClassifierReference
              | DataUniqueCmpTypeReference "." DataProvidesSubprogramAccessIdentifier
              | SubprogramGroupUniqueCmpTypeReference "." ProvidesSubprogramAccessIdentifier
              | AbstractUniqueCmpTypeReference "." ProvidesSubprogramAccessIdentifier
              | FetGroupIdentifier "." RequiresSubprogramAccessIdentifier
              | CmpProtoTypeIdentifier
              | "processor" "." ProvidesSubprogramAccessIdentifier
              | SubprogramGoupSubcomponentIdentifier "." ProvidesSubprogramAccessIdentifier
              | RequiresSubprogramAccessIdentifier
              | RequiresSubprogramGroupAccessIdentifier "." ProvidesSubprogramAccessIdentifier
        syntax SubprogramUniqueCmpClassifierReference ::= NODEF
        syntax DataUniqueCmpTypeReference ::= NODEF
        syntax DataProvidesSubprogramAccessIdentifier ::= Id
        syntax SubprogramGroupUniqueCmpTypeReference ::= NODEF
        syntax ProvidesSubprogramAccessIdentifier ::= Id
        syntax AbstractUniqueCmpTypeReference ::= NODEF
        syntax FetGroupIdentifier ::=  Id
        syntax RequiresSubprogramAccessIdentifier ::=  Id
        syntax CmpProtoTypeIdentifier ::=  Id
        syntax SubprogramGoupSubcomponentIdentifier ::=  Id
        syntax RequiresSubprogramGroupAccessIdentifier ::=  Id
      syntax CallSequencePpeAssoc ::= CallSequencePpeAssoc CallSequencePpeAssoc // +


endmodule