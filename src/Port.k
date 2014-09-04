module PORT-SYNTAX

  syntax PortSpec ::= PortId ":" "in" PortType
                    | PortId ":" "out" PortType
                    | PortId ":" "in" "out" PortType
  syntax PortRefinement ::= PortId ":" "refined" "to" "in" PortType
                          | PortId ":" "refined" "to" "out" PortType
                          | PortId ":" "refined" "to" "in" "out"  PortType
  syntax PortId ::= Id
  
  syntax PortType ::= "data" "port" DataUniCmpClassifierRef
                    | "data" "port" DataCmpProtoTypeId
                    | "event" "data" "port" DataUniCmpClassifierRef
                    | "event" "data" "port" DataCmpProtoTypeId
                    | "event" "port"
					
  syntax DataUniCmpClassifierRef ::= UniCmpClassifierRef
  syntax DataCmpProtoTypeId ::= Id

endmodule