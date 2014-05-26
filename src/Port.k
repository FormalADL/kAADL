module PORT-SYNTAX
// 8.3 check
  syntax PortSpec ::= PortIdentifer ":" "in" PortType
        | PortIdentifer ":" "out" PortType
        | PortIdentifer ":" "in" "out" PortType
  syntax PortRefinement ::= PortIdentifer ":" "refined" "to" "in" PortType
        |  PortIdentifer ":" "refined" "to" "out" PortType
        |  PortIdentifer ":" "refined" "to" "in" "out"  PortType
    syntax PortIdentifer ::= Id
    syntax PortType ::= "data" "port" DataUniCmpClassifierRef
         |  "data" "port" DataCmpProtoTypeId
         |  "event" "data" "port" DataUniCmpClassifierRef
         |  "event" "data" "port" DataCmpProtoTypeId
         |  "event" "port"
      syntax DataUniCmpClassifierRef ::= NODEF
      syntax DataCmpProtoTypeId ::= Id

endmodule