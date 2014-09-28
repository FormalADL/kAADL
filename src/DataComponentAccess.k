module DATACOMPONENTACCESS-SYNTAX

//  syntax DataAccessSpec ::= DataCmpAccessId  Mcolon  DataCmpAccessSamePart
//  syntax DataCmpAccessId ::= Id
//  syntax DataCmpAccessSamePart ::=  Mprovides   Mdata   Maccess  DataUniProtoType
//                                 |  Mrequires   Mdata   Maccess  DataUniProtoType
//  syntax DataUniProtoType ::= DataUniCmpClassifierRef 
                            // | ProtoTypeId
//  syntax DataAccessRefinement ::= DataCmpAccessId  Mcolon   Mrefined   Mto  DataCmpAccessSamePart

    syntax DataAccessSpec ::= DataCmpAccessId  Mcolon   Mprovides   Mdata   Maccess  DataUniCmpClassifierRef
                            | DataCmpAccessId  Mcolon    Mrequires   Mdata   Maccess  DataUniCmpClassifierRef
                            | DataCmpAccessId  Mcolon   Mprovides   Mdata   Maccess  ProtoTypeId
                            | DataCmpAccessId  Mcolon    Mrequires   Mdata   Maccess  ProtoTypeId
                            
    syntax DataAccessRefinement ::= DataCmpAccessId  Mcolon   Mrefined   Mto   Mprovides   Mdata   Maccess  DataUniCmpClassifierRef
                                  | DataCmpAccessId  Mcolon   Mrefined   Mto   Mrequires   Mdata   Maccess  DataUniCmpClassifierRef
                                  | DataCmpAccessId  Mcolon   Mrefined   Mto   Mprovides   Mdata   Maccess  ProtoTypeId
                                  | DataCmpAccessId  Mcolon   Mrefined   Mto   Mrequires   Mdata   Maccess  ProtoTypeId
    syntax DataCmpAccessId ::= Id                      
endmodule

module DATACOMPONENTACCESS
//  imports DATACOMPONENTACCESS-SYNTAX
endmodule

