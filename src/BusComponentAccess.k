module  BUSCOMPONENTACCESS-SYNTAX

  syntax BusAccessSpec ::= DataCmpAccessId ":" BusCmpAccessSamePart
  syntax BusCmpAccessSamePart ::= "provides" "bus" "access" BusUniProtoType
                                | "requires" "bus" "access" BusUniProtoType
  syntax BusUniProtoType ::= BusUniCmpClassifierRef 
                           | ProtoTypeId 

  syntax BusUniCmpClassifierRef ::= Id
  syntax BusAccessRefinement ::= DataCmpAccessId ":" "refined" "to" BusCmpAccessSamePart

endmodule

module BUSCOMPONENTACCESS
//  imports BUSCOMPONENTACCESS-SYNTAX
endmodule