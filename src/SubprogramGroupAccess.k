module SUBPROGRAMGROUPACCESS-SYNTAX
  syntax SubprogramAccessSpec ::= SubprogramAccessId ":" "provides" "subprogram" "access" SubprogramAccessSpecAssocTmp
             |  SubprogramAccessId ":" "requires" "subprogram" "access" SubprogramAccessSpecAssocTmp
    syntax SubprogramAccessId ::= Id
    syntax SubprogramAccessSpecAssocTmp ::= SubprogramUniCmpClassifierRef
                 |  ProtoTypeId
                 |  NoneStatement



  syntax SubprogramAccessRefinement ::= SubprogramAccessId ":" "refined" "to" "provides" "subprogram" "access" SubprogramAccessSpecAssocTmp
             |  SubprogramAccessId ":" "refined" "to" "requires" "subprogram" "access" SubprogramAccessSpecAssocTmp
  


  syntax SubprogramGroupAccessSpec ::= SubprogramGroupAccessId ":" "provides" "subprogram" "group" "access" SubprogramAccessSpecAssocTmp
                  |  SubprogramGroupAccessId ":" "requires" "subprogram" "group" "access" SubprogramAccessSpecAssocTmp
      syntax SubprogramGroupAccessId ::= Id

  syntax SubprogramGroupAccessRefinement ::= SubprogramGroupAccessId ":" "refined" "to" "provides" "subprogram" "group" "access" SubprogramAccessSpecAssocTmp
            |  SubprogramGroupAccessId ":" "refined" "to" "requires" "subprogram" "group" "access" SubprogramAccessSpecAssocTmp

endmodule