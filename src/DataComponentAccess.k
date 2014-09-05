module DATACOMPONENTACCESS-SYNTAX

//  syntax DataAccessSpec ::= DataCmpAccessId ":" DataCmpAccessSamePart
//  syntax DataCmpAccessId ::= Id
//  syntax DataCmpAccessSamePart ::= "provides" "data" "access" DataUniProtoType
//                                 | "requires" "data" "access" DataUniProtoType
//  syntax DataUniProtoType ::= DataUniCmpClassifierRef 
                            // | ProtoTypeId
//  syntax DataAccessRefinement ::= DataCmpAccessId ":" "refined" "to" DataCmpAccessSamePart

    syntax DataAccessSpec ::= DataCmpAccessId ":" "provides" "data" "access" DataUniCmpClassifierRef
                            | DataCmpAccessId ":"  "requires" "data" "access" DataUniCmpClassifierRef
                            | DataCmpAccessId ":" "provides" "data" "access" ProtoTypeId
                            | DataCmpAccessId ":"  "requires" "data" "access" ProtoTypeId
                            
    syntax DataAccessRefinement ::= DataCmpAccessId ":" "refined" "to" "provides" "data" "access" DataUniCmpClassifierRef
                                  | DataCmpAccessId ":" "refined" "to" "requires" "data" "access" DataUniCmpClassifierRef
                                  | DataCmpAccessId ":" "refined" "to" "provides" "data" "access" ProtoTypeId
                                  | DataCmpAccessId ":" "refined" "to" "requires" "data" "access" ProtoTypeId
    syntax DataCmpAccessId ::= Id                      
endmodule

module DATACOMPONENTACCESS
//  imports DATACOMPONENTACCESS-SYNTAX
endmodule
