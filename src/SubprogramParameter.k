module SUBPROGRAMPARAMETER-SYNTAX

//  syntax ParameterSpec ::= ParameterId  Mcolon  SubPgmParameterSamePart 
//  syntax ParameterId ::= Id
//  syntax SubPgmParameterSamePart ::= InOut  Mparameter  DataUniqureProtoType
                                   
//  syntax DataUniqureProtoType ::= DataUniCmpClassifierRef 
//                                | ProtoTypeId 
								
//  syntax ParameterRefinement ::= ParameterId  Mcolon   Mrefined   Mto  SubPgmParameterSamePart

    syntax ParameterSpec ::= ParameterId  Mcolon    Min   Mparameter  DataUniCmpClassifierRef
                           | ParameterId  Mcolon    Mout   Mparameter  DataUniCmpClassifierRef
                           | ParameterId  Mcolon    Min   Mout   Mparameter  DataUniCmpClassifierRef
                           | ParameterId  Mcolon    Min   Mparameter  ProtoTypeId 
                           | ParameterId  Mcolon    Mout   Mparameter  ProtoTypeId 
                           | ParameterId  Mcolon    Min   Mout   Mparameter  ProtoTypeId 
                           
    syntax ParameterRefinement ::= ParameterId  Mcolon    Mrefined   Mto   Min   Mparameter  DataUniCmpClassifierRef
                                 | ParameterId  Mcolon    Mrefined   Mto   Mout   Mparameter  DataUniCmpClassifierRef
                                 | ParameterId  Mcolon    Mrefined   Mto   Min   Mout   Mparameter  DataUniCmpClassifierRef
                                 | ParameterId  Mcolon    Mrefined   Mto   Min   Mparameter  ProtoTypeId 
                                 | ParameterId  Mcolon    Mrefined   Mto   Mout   Mparameter  ProtoTypeId 
                                 | ParameterId  Mcolon    Mrefined   Mto   Min   Mout   Mparameter  ProtoTypeId 
    syntax ParameterId ::= Id
endmodule

module SUBPROGRAMPARAMETER
//  imports SUBPROGRAMPARAMETER-SYNTAX 
endmodule

