module SUBPROGRAMPARAMETER-SYNTAX
// 8.5 check
  syntax ParameterSpec ::= ParameterId ":" SubprogramParameterSamePart 
    syntax ParameterId ::= Id
    syntax SubprogramParameterSamePart ::= InOut "parameter" DataUniqureProtoType
      syntax InOut ::= "in" | "out " | "in" "out"
      syntax DataUniqureProtoType ::= DataUniCmpClassifierRef | ProtoTypeId | NoneStatement

  syntax ParameterRefinement ::= ParameterId ":" "refined" "to" SubprogramParameterSamePart
  
endmodule

module SUBPROGRAMPARAMETER

//  imports SUBPROGRAMPARAMETER-SYNTAX 

endmodule