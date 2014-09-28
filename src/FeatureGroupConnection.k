module FEATUREGROUPCONNECTION-SYNTAX
// 9.5 check
  syntax FetGroupConnection ::=  Mfeature   Mgroup  SourceFetGroupRef ConnectionSymbol DestinationFetGroupRef
  syntax SourceFetGroupRef ::= FetGroupRef
  syntax DestinationFetGroupRef ::= FetGroupRef
  syntax FetGroupConnectionRefinement ::=  Mfeature   Mgroup 

  syntax FetGroupRef ::= CmpTypeFetGroupId
              |  SubCmpId  MPoint  FetGroupId
              |  CmpTypeFetGroupId  MPoint  ElementFetGroupId
    syntax ElementFetGroupId ::= Id

endmodule

module FEATUREGROUPCONNECTION

//  imports FEATUREGROUPCONNECTION-SYNTAX

endmodule
