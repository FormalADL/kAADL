module SUBPROGRAMGROUPACCESS-SYNTAX
  syntax SubprogramAccessSpec ::= SubprogramAccessIdentifier ":" "provides ""subprogram ""access " SubprogramAccessSpecAssocTmp
             |  SubprogramAccessIdentifier ":" "requires ""subprogram ""access " SubprogramAccessSpecAssocTmp
    syntax SubprogramAccessIdentifier ::= Id
    syntax SubprogramAccessSpecAssocTmp ::= SubprogramUniqueCmpClassifierRef
                 |  ProtoTypeIdentifier
                 |  NoneStatement



  syntax SubprogramAccessRefinement ::= SubprogramAccessIdentifier ":" "refined " "to ""provides ""subprogram ""access " SubprogramAccessSpecAssocTmp
             |  SubprogramAccessIdentifier ":" "refined " "to ""requires ""subprogram ""access " SubprogramAccessSpecAssocTmp
  


  syntax SubprogramGroupAccessSpec ::= SubprogramGroupAccessIdentifier ":" "provides ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
                  |  SubprogramGroupAccessIdentifier ":" "requires ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
      syntax SubprogramGroupAccessIdentifier ::= Id

  syntax SubprogramGroupAccessRefinement ::= SubprogramGroupAccessIdentifier ":" "refined " "to ""provides ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
            |  SubprogramGroupAccessIdentifier ":" "refined " "to ""requires ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp

endmodule