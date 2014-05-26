module DATACOMPONENTACCESS-SYNTAX
  syntax DataAccessSpec ::= DataCmpAccessId ":" DataCmpAccessSamePart
  syntax DataCmpAccessId ::= Id
  syntax DataCmpAccessSamePart ::= "provides" "data" "access" DataUniProtoType
                |  "requires" "data" "access" DataUniProtoType
  syntax DataUniProtoType ::= DataUniCmpClassifierRef | ProtoTypeId
  syntax DataAccessRefinement ::= DataCmpAccessId ":" "refined" "to" DataCmpAccessSamePart
endmodule

module DATACOMPONENTACCESS
//  imports DATACOMPONENTACCESS-SYNTAX
endmodule