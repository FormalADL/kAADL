module PORT-SYNTAX
// 8.3 check
  syntax PortSpec ::= PortIdentifer ":" "in" PortType
        | PortIdentifer ":" "out" PortType
        | PortIdentifer ":" "in " "out" PortType
  syntax PortRefinement ::= PortIdentifer ":" "refined " "to " "in" PortType
        |  PortIdentifer ":" "refined " "to " "out" PortType
        |  PortIdentifer ":" "refined " "to " "in " "out"  PortType
    syntax PortIdentifer ::= Id
    syntax PortType ::= "data " "port" DataUniqueCmpClassifierReference
         |  "data " "port" DataCmpProtoTypeIdentifier
         |  "event " "data " "port" DataUniqueCmpClassifierReference
         |  "event " "data " "port" DataCmpProtoTypeIdentifier
         |  "event " "port"
      syntax DataUniqueCmpClassifierReference ::= NODEF
      syntax DataCmpProtoTypeIdentifier ::= Id

endmodule