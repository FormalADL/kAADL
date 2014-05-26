module  BUSCOMPONENTACCESS-SYNTAX
// 8.7 check
  syntax BusAccessSpec ::= DataCmpAccessId ":" BusCmpAccessSamePart
    syntax BusCmpAccessSamePart ::= "provides" "bus" "access" BusUniProtoType
               |  "requires" "bus" "access" BusUniProtoType
      syntax BusUniProtoType ::= BusUniCmpClassifierRef | ProtoTypeId | NoneStatement
        syntax BusUniCmpClassifierRef ::= NODEF



  syntax BusAccessRefinement ::= DataCmpAccessId ":" "refined" "to" BusCmpAccessSamePart


endmodule

module BUSCOMPONENTACCESS

//  imports BUSCOMPONENTACCESS-SYNTAX

endmodule