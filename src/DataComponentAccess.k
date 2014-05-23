module DATACOMPONENTACCESS-SYNTAX
  syntax DataAccessSpec ::= DataCmpAccessIdentifier ":" DataCmpAccessSamePart
  syntax DataCmpAccessIdentifier ::= Id
  syntax DataCmpAccessSamePart ::= "provides " "data ""access " DataUniqueProtoType
                |  "requires " "data ""access " DataUniqueProtoType
  syntax DataUniqueProtoType ::= DataUniqueCmpClassifierReference | ProtoTypeIdentifier
  syntax DataAccessRefinement ::= DataCmpAccessIdentifier ":" "refined ""to " DataCmpAccessSamePart
endmodule

module DATACOMPONENTACCESS
//  imports DATACOMPONENTACCESS-SYNTAX
endmodule