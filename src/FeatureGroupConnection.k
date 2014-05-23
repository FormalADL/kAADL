module FEATUREGROUPCONNECTION-SYNTAX
// 9.5 check
  syntax FetGroupConnection ::= "feature " "group" SourceFetGroupReference ConnectionSymbol DestinationFetGroupReference
  syntax SourceFetGroupReference ::= FetGroupReference
  syntax DestinationFetGroupReference ::= FetGroupReference
  syntax FetGroupConnectionRefinement ::= "feature " "group "

  syntax FetGroupReference ::= CmpTypeFetGroupIdentifier
              |  SubcomponentIdentifier "." FetGroupIdentifier
              |  CmpTypeFetGroupIdentifier "." ElementFetGroupIdentifier
    syntax ElementFetGroupIdentifier ::= Id

endmodule

module FEATUREGROUPCONNECTION

//  imports FEATUREGROUPCONNECTION-SYNTAX

endmodule