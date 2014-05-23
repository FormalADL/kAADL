module FLOWIMPLEMENTATION-SYNTAX 
// 10.2  check
  syntax FlowImpl ::= FlowSourceSinkPathImplementAssocDef PpeAssocInModes ";"
    syntax FlowSourceSinkPathImplementAssocDef ::= FlowSourceImpl | FlowSinkImpl | FlowPathImpl
      syntax FlowSourceImpl ::= FlowIdentifier ":" "flow " "source " SubcompentConnectionAssocDef OutFlowFetIdentifier
        syntax SubcompentConnectionAssocDef ::= NoneStatement
                      |  SubcompenentFlowIdentifier "->" ConnectionIdentifier "->"
                            |  SubcompentConnectionAssocDef SubcompentConnectionAssocDef
          syntax SubcompenentFlowIdentifier ::= Id
      syntax FlowSinkImpl ::= FlowIdentifier ":" "flow ""sink "InFlowFetIdentifier ConnectionSubcompenentFlowAssocDef 
        syntax ConnectionSubcompenentFlowAssocDef ::= NoneStatement 
                      |  "->" ConnectionIdentifier"->"SubcompenentFlowIdentifier
                      | ConnectionSubcompenentFlowAssocDef  ConnectionSubcompenentFlowAssocDef
      syntax FlowPathImpl ::= FlowIdentifier ":" "flow ""path " InFlowFetIdentifier FlowPathImplDefault "->" OutFlowFetIdentifier
        syntax FlowPathImplDefault ::= ConnectIdentifierSubcompenentFlowIdnetifierList "->" OutFlowFetIdentifier
          syntax ConnectIdentifierSubcompenentFlowIdnetifierList ::= "->" ConnextionIdentifier "->" SubCmpFlowIdentifier
                        |  ConnectIdentifierSubcompenentFlowIdnetifierList ConnectIdentifierSubcompenentFlowIdnetifierList
            syntax ConnextionIdentifier ::= Id
            syntax SubCmpFlowIdentifier ::= DataCompenentRef | SubCmpIdentifier | SubCmpIdentifier "." FlowSpecIdentifier
              syntax FlowSpecIdentifier ::= Id
              syntax DataCompenentRef ::= DataSubCmpIdentifier | RequiresDataAccessIdentifier | ProvidesDataAccessIdentifier

    syntax PpeAssocInModes ::= "{"PpeAssocList"}" InModesAndTransitions
               |  "{"PpeAssocList"}"
               |  InModesAndTransitions

endmodule

module FLOWIMPLEMENTATION

//  imports FLOWIMPLEMENTATION-SYNTAX 

endmodule