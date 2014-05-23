module FEATURESHAREACCESS-SYNTAX
// 8.0 check
  syntax Fet ::= AbstractPortGroupAccessParameter ArrayDimensionFeatrueContrained ";"  
  syntax ArrayDimensionFeatrueContrained ::= ArrayDimension 
              | "{" FeatrueContrainedPpeAssoc "}"
              | ArrayDimension "{" FeatrueContrainedPpeAssoc /* + */ "}"
              | NoneStatement

    syntax AbstractPortGroupAccessParameter ::= AbstractFetSpec
               |  PortSpec
               |  FetGroupSpec
               |  SubcomponentAccessSpec
               |  ParameterSpec
    
      syntax SubcomponentAccessSpec ::= SubprogramAccessSpec 
              | SubprogramGroupAccessSpec 
              | DataAccessSpec
              | BusAccessSpec
    syntax FeatrueContrainedPpeAssoc ::= FeatrueContrainedPpeAssoc FeatrueContrainedPpeAssoc // +
  

  syntax FetRefinement ::= AbstractFetRefinement ArrayDimensionFeatrueContrained
          |  PortRefinement ArrayDimensionFeatrueContrained
          |  FetGroupRefinement ArrayDimensionFeatrueContrained
          |  SubcomponentAccessRefinement ArrayDimensionFeatrueContrained
          |  ParameterRefinement ArrayDimensionFeatrueContrained
    syntax SubcomponentAccessRefinement ::= SubprogramAccessRefinement
                 |  SubprogramGroupAccessRefinement
                 |  DataAccessRefinement
                 |  BusAccessRefinement    
endmodule

module FEATURESHAREACCESS

//imports FEATURESHAREACCESS-SYNTAX
endmodule