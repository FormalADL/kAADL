module FEATURESHAREACCESS-SYNTAX
// 8.0 check
  syntax Feature ::= AbstractPortGroupAccessParameter ArrayDimensionFeatrueContrained ";"  
  syntax ArrayDimensionFeatrueContrained ::= ArrayDimension 
              | "{" FeatrueContrainedPpeAssoc "}"
              | ArrayDimension "{" FeatrueContrainedPpeAssoc /* + */ "}"
              | NoneStatement

    syntax AbstractPortGroupAccessParameter ::= AbstractFetSpec
               |  PortSpec
               |  FetGroupSpec
               |  SubCmpAccessSpec
               |  ParameterSpec
    
      syntax SubCmpAccessSpec ::= SubprogramAccessSpec 
              | SubprogramGroupAccessSpec 
              | DataAccessSpec
              | BusAccessSpec
    syntax FeatrueContrainedPpeAssoc ::= FeatrueContrainedPpeAssoc FeatrueContrainedPpeAssoc // +
  

  syntax FetRefinement ::= AbstractFetRefinement ArrayDimensionFeatrueContrained
          |  PortRefinement ArrayDimensionFeatrueContrained
          |  FetGroupRefinement ArrayDimensionFeatrueContrained
          |  SubCmpAccessRefinement ArrayDimensionFeatrueContrained
          |  ParameterRefinement ArrayDimensionFeatrueContrained
    syntax SubCmpAccessRefinement ::= SubprogramAccessRefinement
                 |  SubprogramGroupAccessRefinement
                 |  DataAccessRefinement
                 |  BusAccessRefinement    
endmodule

module FEATURESHAREACCESS

//imports FEATURESHAREACCESS-SYNTAX
endmodule