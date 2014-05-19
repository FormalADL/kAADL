module FEATURESHAREACCESS-SYNTAX
// 8.0 check
  syntax Feature ::= AbstractPortGroupAccessParameter ArrayDimensionFeatrueContrained ";"  
  syntax ArrayDimensionFeatrueContrained ::= ArrayDimension 
              | "{" FeatrueContrainedPropertyAssociation "}"
              | ArrayDimension "{" FeatrueContrainedPropertyAssociation /* + */ "}"
              | NoneStatement

    syntax AbstractPortGroupAccessParameter ::= AbstractFeatureSpec
               |  PortSpec
               |  FeatureGroupSpec
               |  SubcomponentAccessSpec
               |  ParameterSpec
    
      syntax SubcomponentAccessSpec ::= SubprogramAccessSpec 
              | SubprogramGroupAccessSpec 
              | DataAccessSpec
              | BusAccessSpec
    syntax FeatrueContrainedPropertyAssociation ::= FeatrueContrainedPropertyAssociation FeatrueContrainedPropertyAssociation // +
  

  syntax FeatureRefinement ::= AbstractFeatureRefinement ArrayDimensionFeatrueContrained
          |  PortRefinement ArrayDimensionFeatrueContrained
          |  FeatureGroupRefinement ArrayDimensionFeatrueContrained
          |  SubcomponentAccessRefinement ArrayDimensionFeatrueContrained
          |  ParameterRefinement ArrayDimensionFeatrueContrained
    syntax SubcomponentAccessRefinement ::= SubprogramAccessRefinement
                 |  SubprogramGroupAccessRefinement
                 |  DataAccessRefinement
                 |  BusAccessRefinement    
endmodule

module FEATURESHAREACCESS

imports FEATURESHAREACCESS-SYNTAX
endmodule