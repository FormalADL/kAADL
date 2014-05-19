module  BUSCOMPONENTACCESS-SYNTAX
// 8.7 check
  syntax BusAccessSpec ::= DataComponentAccessIdentifier ":" BusComponentAccessSamePart
    syntax BusComponentAccessSamePart ::= "provides " "bus ""access " BusUniqueProtoType
               |  "requires " "bus ""access " BusUniqueProtoType
      syntax BusUniqueProtoType ::= BusUniqueComponentClassifierReference | ProtoTypeIdentifier | NoneStatement
        syntax BusUniqueComponentClassifierReference ::= NODEF



  syntax BusAccessRefinement ::= DataComponentAccessIdentifier ": " "refined ""to "BusComponentAccessSamePart


endmodule

module BUSCOMPONENTACCESS

  imports BUSCOMPONENTACCESS-SYNTAX

endmodule