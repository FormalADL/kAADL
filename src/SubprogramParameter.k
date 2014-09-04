module SUBPROGRAMPARAMETER-SYNTAX

//  syntax ParameterSpec ::= ParameterId ":" SubPgmParameterSamePart 
//  syntax ParameterId ::= Id
//  syntax SubPgmParameterSamePart ::= InOut "parameter" DataUniqureProtoType
                                   
//  syntax DataUniqureProtoType ::= DataUniCmpClassifierRef 
//                                | ProtoTypeId 
								
//  syntax ParameterRefinement ::= ParameterId ":" "refined" "to" SubPgmParameterSamePart

    syntax ParameterSpec ::= ParameterId ":"  "in" "parameter" DataUniCmpClassifierRef
                           | ParameterId ":"  "out" "parameter" DataUniCmpClassifierRef
                           | ParameterId ":"  "in" "out" "parameter" DataUniCmpClassifierRef
                           | ParameterId ":"  "in" "parameter" ProtoTypeId 
                           | ParameterId ":"  "out" "parameter" ProtoTypeId 
                           | ParameterId ":"  "in" "out" "parameter" ProtoTypeId 
                           
    syntax ParameterRefinement ::= ParameterId ":"  "refined" "to" "in" "parameter" DataUniCmpClassifierRef
                                 | ParameterId ":"  "refined" "to" "out" "parameter" DataUniCmpClassifierRef
                                 | ParameterId ":"  "refined" "to" "in" "out" "parameter" DataUniCmpClassifierRef
                                 | ParameterId ":"  "refined" "to" "in" "parameter" ProtoTypeId 
                                 | ParameterId ":"  "refined" "to" "out" "parameter" ProtoTypeId 
                                 | ParameterId ":"  "refined" "to" "in" "out" "parameter" ProtoTypeId 
    syntax ParameterId ::= Id
    syntax ProtoTypeId ::= Id
    syntax DataUniCmpClassifierRef ::= UniCmpClassifierRef                             
endmodule

module SUBPROGRAMPARAMETER
//  imports SUBPROGRAMPARAMETER-SYNTAX 
endmodule