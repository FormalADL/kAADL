module SUBPROGRAMCALL-SYNTAX
// 5.2 check
  syntax SubprogramCallSequence ::= CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" InModes ";"
               |  CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" "{" CallSequencePropertyAssociation /* + */ "}" InModes ";"
    syntax CallSequenceIdentifier ::= Id
    syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram ";"
    syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram "{" CallSequencePropertyAssociation /* + */"}"";"
      syntax CallIdentifier ::= Id
      syntax CalledSubprogram ::= SubprogramUniqueComponentClassifierReference
              | DataUniqueComponentTypeReference "." DataProvidesSubprogramAccessIdentifier
              | SubprogramGroupUniqueComponentTypeReference "." ProvidesSubprogramAccessIdentifier
              | AbstractUniqueComponentTypeReference "." ProvidesSubprogramAccessIdentifier
              | FeatureGroupIdentifier "." RequiresSubprogramAccessIdentifier
              | ComponentProtoTypeIdentifier
              | "processor" "." ProvidesSubprogramAccessIdentifier
              | SubprogramGoupSubcomponentIdentifier "." ProvidesSubprogramAccessIdentifier
              | RequiresSubprogramAccessIdentifier
              | RequiresSubprogramGroupAccessIdentifier "." ProvidesSubprogramAccessIdentifier
        syntax SubprogramUniqueComponentClassifierReference ::= NODEF
        syntax DataUniqueComponentTypeReference ::= NODEF
        syntax DataProvidesSubprogramAccessIdentifier ::= Id
        syntax SubprogramGroupUniqueComponentTypeReference ::= NODEF
        syntax ProvidesSubprogramAccessIdentifier ::= Id
        syntax AbstractUniqueComponentTypeReference ::= NODEF
        syntax FeatureGroupIdentifier ::=  Id
        syntax RequiresSubprogramAccessIdentifier ::=  Id
        syntax ComponentProtoTypeIdentifier ::=  Id
        syntax SubprogramGoupSubcomponentIdentifier ::=  Id
        syntax RequiresSubprogramGroupAccessIdentifier ::=  Id
      syntax CallSequencePropertyAssociation ::= CallSequencePropertyAssociation CallSequencePropertyAssociation // +


endmodule