module DATACOMPONENTACCESS-SYNTAX
  syntax DataAccessSpec ::= DataComponentAccessIdentifier ":" DataComponentAccessSamePart
  syntax DataComponentAccessIdentifier ::= Id
  syntax DataComponentAccessSamePart ::= "provides " "data ""access " DataUniqueProtoType
                |  "requires " "data ""access " DataUniqueProtoType
  syntax DataUniqueProtoType ::= DataUniqueComponentClassifierReference | ProtoTypeIdentifier
  syntax DataAccessRefinement ::= DataComponentAccessIdentifier ":" "refined ""to " DataComponentAccessSamePart
endmodule

module DATACOMPONENTACCESS
  imports DATACOMPONENTACCESS-SYNTAX
endmodule