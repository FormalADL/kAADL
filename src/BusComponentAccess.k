module  BUSCOMPONENTACCESS-SYNTAX

//  syntax BusAccessSpec ::= DataCmpAccessId  Mcolon  BusCmpAccessSamePart
//  syntax BusCmpAccessSamePart ::=  Mprovides   Mbus   Maccess  BusUniProtoType
//                                |  Mrequires   Mbus   Maccess  BusUniProtoType
//  syntax BusUniProtoType ::= BusUniCmpClassifierRef 
//                           | ProtoTypeId 

//  syntax BusUniCmpClassifierRef ::= Id
//  syntax BusAccessRefinement ::= DataCmpAccessId  Mcolon   Mrefined   Mto  BusCmpAccessSamePart

    syntax BusAccessSpec ::= DataCmpAccessId  Mcolon   Mprovides   Mdata   Maccess  BusUniCmpClassifierRef
                            | DataCmpAccessId  Mcolon    Mrequires   Mdata   Maccess  BusUniCmpClassifierRef
                            | DataCmpAccessId  Mcolon   Mprovides   Mdata   Maccess  ProtoTypeId
                            | DataCmpAccessId  Mcolon    Mrequires   Mdata   Maccess  ProtoTypeId
                            
    syntax BusAccessRefinement ::= DataCmpAccessId  Mcolon   Mrefined   Mto   Mprovides   Mdata   Maccess  BusUniCmpClassifierRef
                                  | DataCmpAccessId  Mcolon   Mrefined   Mto   Mrequires   Mdata   Maccess  BusUniCmpClassifierRef
                                  | DataCmpAccessId  Mcolon   Mrefined   Mto   Mprovides   Mdata   Maccess  ProtoTypeId
                                  | DataCmpAccessId  Mcolon   Mrefined   Mto   Mrequires   Mdata   Maccess  ProtoTypeId

    syntax BusUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule

module BUSCOMPONENTACCESS
//  imports BUSCOMPONENTACCESS-SYNTAX
endmodule
