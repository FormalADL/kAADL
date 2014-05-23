module SUBPROGRAMPARAMETER-SYNTAX
// 8.5 check
  syntax ParameterSpec ::= ParameterIdentifier ":" SubprogramParameterSamePart 
    syntax ParameterIdentifier ::= Id
    syntax SubprogramParameterSamePart ::= InOut "parameter " DataUniqureProtoType
      syntax InOut ::= "in " | "out " | "in ""out "
      syntax DataUniqureProtoType ::= DataUniqueCmpClassifierReference | ProtoTypeIdentifier | NoneStatement

  syntax ParameterRefinement ::= ParameterIdentifier ":" "refined ""to " SubprogramParameterSamePart
  
endmodule

module SUBPROGRAMPARAMETER

//  imports SUBPROGRAMPARAMETER-SYNTAX 

endmodule