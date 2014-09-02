module SUBPROGRAMPARAMETER-SYNTAX

  syntax ParameterSpec ::= ParameterId ":" SubPgmParameterSamePart 
  syntax ParameterId ::= Id
  syntax SubPgmParameterSamePart ::= InOut "parameter" DataUniqureProtoType
                                   
  syntax DataUniqureProtoType ::= DataUniCmpClassifierRef 
                                | ProtoTypeId 
								
  syntax ParameterRefinement ::= ParameterId ":" "refined" "to" SubPgmParameterSamePart
  
endmodule

module SUBPROGRAMPARAMETER
//  imports SUBPROGRAMPARAMETER-SYNTAX 
endmodule