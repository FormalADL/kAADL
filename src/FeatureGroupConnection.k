module FEATUREGROUPCONNECTION-SYNTAX
// 9.5 check
  syntax FetGroupConnection ::= "feature" "group" SourceFetGroupRef ConnectionSymbol DestinationFetGroupRef
  syntax SourceFetGroupRef ::= FetGroupRef
  syntax DestinationFetGroupRef ::= FetGroupRef
  syntax FetGroupConnectionRefinement ::= "feature" "group"

  syntax FetGroupRef ::= CmpTypeFetGroupId
              |  SubCmpId "." FetGroupId
              |  CmpTypeFetGroupId "." ElementFetGroupId
    syntax ElementFetGroupId ::= Id

endmodule

module FEATUREGROUPCONNECTION

//  imports FEATUREGROUPCONNECTION-SYNTAX

endmodule