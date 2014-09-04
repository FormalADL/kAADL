module  BUSCOMPONENTACCESS-SYNTAX

//  syntax BusAccessSpec ::= DataCmpAccessId ":" BusCmpAccessSamePart
//  syntax BusCmpAccessSamePart ::= "provides" "bus" "access" BusUniProtoType
//                                | "requires" "bus" "access" BusUniProtoType
//  syntax BusUniProtoType ::= BusUniCmpClassifierRef 
//                           | ProtoTypeId 

//  syntax BusUniCmpClassifierRef ::= Id
//  syntax BusAccessRefinement ::= DataCmpAccessId ":" "refined" "to" BusCmpAccessSamePart

    syntax BusAccessSpec ::= DataCmpAccessId ":" "provides" "data" "access" BusUniCmpClassifierRef
                            | DataCmpAccessId ":"  "requires" "data" "access" BusUniCmpClassifierRef
                            | DataCmpAccessId ":" "provides" "data" "access" ProtoTypeId
                            | DataCmpAccessId ":"  "requires" "data" "access" ProtoTypeId
                            
    syntax BusAccessRefinement ::= DataCmpAccessId ":" "refined" "to" "provides" "data" "access" BusUniCmpClassifierRef
                                  | DataCmpAccessId ":" "refined" "to" "requires" "data" "access" BusUniCmpClassifierRef
                                  | DataCmpAccessId ":" "refined" "to" "provides" "data" "access" ProtoTypeId
                                  | DataCmpAccessId ":" "refined" "to" "requires" "data" "access" ProtoTypeId

    syntax BusUniCmpClassifierRef ::= UniCmpClassifierRef 
endmodule

module BUSCOMPONENTACCESS
//  imports BUSCOMPONENTACCESS-SYNTAX
endmodule