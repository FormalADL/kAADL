module SUBPROGRAMGROUPACCESS-SYNTAX

  syntax SubPgmAccessSpec ::= SubPgmAccessId  Mcolon   Mprovides   Msubprogram   Maccess  SubPgmUniCmpClassifierRef
                            | SubPgmAccessId  Mcolon   Mrequires   Msubprogram   Maccess  SubPgmUniCmpClassifierRef
                            | SubPgmAccessId  Mcolon   Mprovides   Msubprogram   Maccess  SubPgmProtoTypeId
                            | SubPgmAccessId  Mcolon   Mrequires   Msubprogram   Maccess  SubPgmProtoTypeId
  
//  syntax SubPgmAccessSpecAssoc ::= SubPgmUniCmpClassifierRef
//                                 | SubPgmProtoTypeId

  syntax SubPgmAccessRefinement ::= SubPgmAccessId  Mcolon   Mrefined   Mto   Mprovides   Msubprogram   Maccess  SubPgmUniCmpClassifierRef
                                  | SubPgmAccessId  Mcolon   Mrefined   Mto   Mrequires   Msubprogram   Maccess  SubPgmUniCmpClassifierRef
                                  | SubPgmAccessId  Mcolon   Mrefined   Mto   Mprovides   Msubprogram   Maccess  SubPgmProtoTypeId
                                  | SubPgmAccessId  Mcolon   Mrefined   Mto   Mrequires   Msubprogram   Maccess  SubPgmProtoTypeId
  
  syntax SubPgmGroupAccessSpec ::= SubPgmGroupAccessId  Mcolon   Mprovides   Msubprogram   Mgroup   Maccess  SubPgmUniCmpClassifierRef
                                 | SubPgmGroupAccessId  Mcolon   Mrequires   Msubprogram   Mgroup   Maccess  SubPgmUniCmpClassifierRef
                                 | SubPgmGroupAccessId  Mcolon   Mprovides   Msubprogram   Mgroup   Maccess  SubPgmProtoTypeId
                                 | SubPgmGroupAccessId  Mcolon   Mrequires   Msubprogram   Mgroup   Maccess  SubPgmProtoTypeId

  syntax SubPgmGroupAccessRefinement ::= SubPgmGroupAccessId  Mcolon   Mrefined   Mto   Mprovides   Msubprogram   Mgroup   Maccess  SubPgmUniCmpClassifierRef
                                       | SubPgmGroupAccessId  Mcolon   Mrefined   Mto   Mrequires   Msubprogram   Mgroup   Maccess  SubPgmUniCmpClassifierRef
                                       | SubPgmGroupAccessId  Mcolon   Mrefined   Mto   Mprovides   Msubprogram   Mgroup   Maccess  SubPgmProtoTypeId
                                       | SubPgmGroupAccessId  Mcolon   Mrefined   Mto   Mrequires   Msubprogram   Mgroup   Maccess  SubPgmProtoTypeId
 
 
   syntax SubPgmProtoTypeId ::= Id
   syntax SubPgmUniCmpClassifierRef ::= UniCmpClassifierRef
   syntax SubPgmAccessId ::= Id
   syntax SubPgmGroupAccessId ::= Id 
         
endmodule

