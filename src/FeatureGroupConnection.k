module FEATUREGROUPCONNECTION-SYNTAX
// 9.5 check
  syntax FetGroupConnection ::= "feature " "group" SourceFetGroupRef ConnectionSymbol DestinationFetGroupRef
  syntax SourceFetGroupRef ::= FetGroupRef
  syntax DestinationFetGroupRef ::= FetGroupRef
  syntax FetGroupConnectionRefinement ::= "feature " "group "

  syntax FetGroupRef ::= CmpTypeFetGroupIdentifier
              |  SubCmpIdentifier "." FetGroupIdentifier
              |  CmpTypeFetGroupIdentifier "." ElementFetGroupIdentifier
    syntax ElementFetGroupIdentifier ::= Id

endmodule

module FEATUREGROUPCONNECTION

//  imports FEATUREGROUPCONNECTION-SYNTAX

endmodule