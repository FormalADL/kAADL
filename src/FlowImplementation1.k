module FLOWIMPLEMENTATION-SYNTAX 
// 10.2  check
  syntax FlowImpl ::= FlowSourceSinkPathImplementAssocDef PpeAssocInModes ";"
    syntax FlowSourceSinkPathImplementAssocDef ::= FlowSourceImpl | FlowSinkImpl | FlowPathImpl
      syntax FlowSourceImpl ::= FlowId ":" "flow" "source" SubcompentConnectionAssocDef OutFlowFetId
        syntax SubcompentConnectionAssocDef ::= NoneStatement
                      |  SubcompenentFlowId "->" ConnectionId "->"
                      |  SubcompentConnectionAssocDef SubcompentConnectionAssocDef
          syntax SubcompenentFlowId ::= Id
      syntax FlowSinkImpl ::= FlowId ":" "flow" "sink" InFlowFetId ConnectionSubcompenentFlowAssocDef 
        syntax ConnectionSubcompenentFlowAssocDef ::= NoneStatement 
                      |  "->" ConnectionId"->"SubcompenentFlowId
                      | ConnectionSubcompenentFlowAssocDef  ConnectionSubcompenentFlowAssocDef
      syntax FlowPathImpl ::= FlowId ":" "flow" "path" InFlowFetId FlowPathImplDefault "->" OutFlowFetId
        syntax FlowPathImplDefault ::= ConnectIdSubcompenentFlowIdnetifierList "->" ConnectionId
          syntax ConnectIdSubcompenentFlowIdnetifierList ::= "->" ConnectionId "->" SubCmpFlowId
                        |  ConnectIdSubcompenentFlowIdnetifierList ConnectIdSubcompenentFlowIdnetifierList
            syntax ConnectionId ::= Id
            syntax SubCmpFlowId ::= DataCompenentRef | SubCmpId | SubCmpId "." FlowSpecId
              syntax FlowSpecId ::= Id
              syntax DataCompenentRef ::= DataSubCmpId | RequiresDataAccessId | ProvidesDataAccessId

    syntax PpeAssocInModes ::= "{"PpeAssocList"}" InModesAndTransitions
               |  "{"PpeAssocList"}"
               |  InModesAndTransitions

endmodule

module FLOWIMPLEMENTATION

//  imports FLOWIMPLEMENTATION-SYNTAX 

endmodule