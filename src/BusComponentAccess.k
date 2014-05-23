module  BUSCOMPONENTACCESS-SYNTAX
// 8.7 check
  syntax BusAccessSpec ::= DataCmpAccessIdentifier ":" BusCmpAccessSamePart
    syntax BusCmpAccessSamePart ::= "provides " "bus ""access " BusUniqueProtoType
               |  "requires " "bus ""access " BusUniqueProtoType
      syntax BusUniqueProtoType ::= BusUniqueCmpClassifierReference | ProtoTypeIdentifier | NoneStatement
        syntax BusUniqueCmpClassifierReference ::= NODEF



  syntax BusAccessRefinement ::= DataCmpAccessIdentifier ": " "refined ""to "BusCmpAccessSamePart


endmodule

module BUSCOMPONENTACCESS

//  imports BUSCOMPONENTACCESS-SYNTAX

endmodule