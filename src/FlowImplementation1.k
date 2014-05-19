module FLOWIMPLEMENTATION-SYNTAX 
// 10.2  check
  syntax FlowImplementation ::= FlowSourceSinkPathImplementAssociationDefination PropertyAssociationInModes ";"
    syntax FlowSourceSinkPathImplementAssociationDefination ::= FlowSourceImplementation | FlowSinkImplementation | FlowPathImplementation
      syntax FlowSourceImplementation ::= FlowIdentifier ":" "flow " "source " SubcompentConnectionAssocDefination OutFlowFeatureIdentifier
        syntax SubcompentConnectionAssocDefination ::= NoneStatement
                      |  SubcompenentFlowIdentifier "->" ConnectionIdentifier "->"
                            |  SubcompentConnectionAssocDefination SubcompentConnectionAssocDefination
          syntax SubcompenentFlowIdentifier ::= Id
      syntax FlowSinkImplementation ::= FlowIdentifier ":" "flow ""sink "InFlowFeatureIdentifier ConnectionSubcompenentFlowAssociationDefination 
        syntax ConnectionSubcompenentFlowAssociationDefination ::= NoneStatement 
                      |  "->" ConnectionIdentifier"->"SubcompenentFlowIdentifier
                      | ConnectionSubcompenentFlowAssociationDefination  ConnectionSubcompenentFlowAssociationDefination
      syntax FlowPathImplementation ::= FlowIdentifier ":" "flow ""path " InFlowFeatureIdentifier FlowPathImplementationDefault "->" OutFlowFeatureIdentifier
        syntax FlowPathImplementationDefault ::= ConnectIdentifierSubcompenentFlowIdnetifierList "->" OutFlowFeatureIdentifier
          syntax ConnectIdentifierSubcompenentFlowIdnetifierList ::= "->" ConnextionIdentifier "->" SubcomponentFlowIdentifier
                        |  ConnectIdentifierSubcompenentFlowIdnetifierList ConnectIdentifierSubcompenentFlowIdnetifierList
            syntax ConnextionIdentifier ::= Id
            syntax SubcomponentFlowIdentifier ::= DataCompenentReference | SubcomponentIdentifier | SubcomponentIdentifier "." FlowSpecIdentifier
              syntax FlowSpecIdentifier ::= Id
              syntax DataCompenentReference ::= DataSubcomponentIdentifier | RequiresDataAccessIdentifier | ProvidesDataAccessIdentifier

    syntax PropertyAssociationInModes ::= "{"PropertyAssociationList"}" InModesAndTransitions
               |  "{"PropertyAssociationList"}"
               |  InModesAndTransitions

endmodule

module FLOWIMPLEMENTATION

  imports FLOWIMPLEMENTATION-SYNTAX 

endmodule