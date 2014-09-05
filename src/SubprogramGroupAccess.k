module SUBPROGRAMGROUPACCESS-SYNTAX

  syntax SubPgmAccessSpec ::= SubPgmAccessId ":" "provides" "subprogram" "access" SubPgmUniCmpClassifierRef
                            | SubPgmAccessId ":" "requires" "subprogram" "access" SubPgmUniCmpClassifierRef
                            | SubPgmAccessId ":" "provides" "subprogram" "access" SubPgmProtoTypeId
                            | SubPgmAccessId ":" "requires" "subprogram" "access" SubPgmProtoTypeId
  
//  syntax SubPgmAccessSpecAssoc ::= SubPgmUniCmpClassifierRef
//                                 | SubPgmProtoTypeId

  syntax SubPgmAccessRefinement ::= SubPgmAccessId ":" "refined" "to" "provides" "subprogram" "access" SubPgmUniCmpClassifierRef
                                  | SubPgmAccessId ":" "refined" "to" "requires" "subprogram" "access" SubPgmUniCmpClassifierRef
                                  | SubPgmAccessId ":" "refined" "to" "provides" "subprogram" "access" SubPgmProtoTypeId
                                  | SubPgmAccessId ":" "refined" "to" "requires" "subprogram" "access" SubPgmProtoTypeId
  
  syntax SubPgmGroupAccessSpec ::= SubPgmGroupAccessId ":" "provides" "subprogram" "group" "access" SubPgmUniCmpClassifierRef
                                 | SubPgmGroupAccessId ":" "requires" "subprogram" "group" "access" SubPgmUniCmpClassifierRef
                                 | SubPgmGroupAccessId ":" "provides" "subprogram" "group" "access" SubPgmProtoTypeId
                                 | SubPgmGroupAccessId ":" "requires" "subprogram" "group" "access" SubPgmProtoTypeId

  syntax SubPgmGroupAccessRefinement ::= SubPgmGroupAccessId ":" "refined" "to" "provides" "subprogram" "group" "access" SubPgmUniCmpClassifierRef
                                       | SubPgmGroupAccessId ":" "refined" "to" "requires" "subprogram" "group" "access" SubPgmUniCmpClassifierRef
                                       | SubPgmGroupAccessId ":" "refined" "to" "provides" "subprogram" "group" "access" SubPgmProtoTypeId
                                       | SubPgmGroupAccessId ":" "refined" "to" "requires" "subprogram" "group" "access" SubPgmProtoTypeId
 
 
   syntax SubPgmProtoTypeId ::= Id
   syntax SubPgmUniCmpClassifierRef ::= UniCmpClassifierRef
   syntax SubPgmAccessId ::= Id
   syntax SubPgmGroupAccessId ::= Id 
         
endmodule
