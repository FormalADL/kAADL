module PORT-SYNTAX

  syntax PortSpec ::= PortId  Mcolon   Min  PortType
                    | PortId  Mcolon   Mout  PortType
                    | PortId  Mcolon   Min   Mout  PortType
  syntax PortRefinement ::= PortId  Mcolon   Mrefined   Mto   Min  PortType
                          | PortId  Mcolon   Mrefined   Mto   Mout  PortType
                          | PortId  Mcolon   Mrefined   Mto   Min   Mout   PortType
  syntax PortId ::= Id
  
  syntax PortType ::=  Mdata   Mport  DataUniCmpClassifierRef
                    |  Mdata   Mport  DataCmpProtoTypeId
                    |  Mdata   Mport 
                    |  Mevent   Mdata   Mport  DataUniCmpClassifierRef
                    |  Mevent   Mdata   Mport  DataCmpProtoTypeId
                    |  Mevent   Mdata   Mport
                    |  Mevent   Mport 
					
  syntax DataUniCmpClassifierRef ::= UniCmpClassifierRef
  syntax DataCmpProtoTypeId ::= Id

endmodule
