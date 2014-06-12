module SUBPROGRAMGROUPACCESS-SYNTAX

  syntax SubPgmAccessSpec ::= SubPgmAccessId ":" "provides" "subprogram" "access" SubPgmAccessSpecAssoc
                            | SubPgmAccessId ":" "requires" "subprogram" "access" SubPgmAccessSpecAssoc
  syntax SubPgmAccessId ::= Id
  
  syntax SubPgmAccessSpecAssoc ::= SubPgmUniCmpClassifierRef
                                 | SubPgmProtoTypeId
  syntax SubPgmProtoTypeId ::= Id

  syntax SubPgmAccessRefinement ::= SubPgmAccessId ":" "refined" "to" "provides" "subprogram" "access" SubPgmAccessSpecAssoc
                                  | SubPgmAccessId ":" "refined" "to" "requires" "subprogram" "access" SubPgmAccessSpecAssoc
  
  syntax SubPgmGroupAccessSpec ::= SubPgmGroupAccessId ":" "provides" "subprogram" "group" "access" SubPgmAccessSpecAssoc
                                 | SubPgmGroupAccessId ":" "requires" "subprogram" "group" "access" SubPgmAccessSpecAssoc
  syntax SubPgmGroupAccessId ::= Id

  syntax SubPgmGroupAccessRefinement ::= SubPgmGroupAccessId ":" "refined" "to" "provides" "subprogram" "group" "access" SubPgmAccessSpecAssoc
                                       | SubPgmGroupAccessId ":" "refined" "to" "requires" "subprogram" "group" "access" SubPgmAccessSpecAssoc
 
endmodule