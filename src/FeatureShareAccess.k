module FEATURESHAREACCESS-SYNTAX

  syntax Feature ::= AbstractPortGroupAccessParameter ";" 
                   | AbstractPortGroupAccessParameter ArrayDimensionFeatrueContrained ";"  

  syntax AbstractPortGroupAccessParameter ::= AbstractFetSpec
                                            | PortSpec
                                            | FetGroupSpec
                                            | SubCmpAccessSpec
                                            | ParameterSpec
  
  syntax ArrayDimensionFeatrueContrained ::= ArrayDimension 
                                           | "{" FeatrueContrainedPpeAssoc "}"
                                           | ArrayDimension "{" FeatrueContrainedPpeAssoc "}"
  syntax FeatrueContrainedPpeAssoc ::= FeatrueContrainedPpeAssoc FeatrueContrainedPpeAssoc 
  syntax FeatrueContrainedPpeAssoc ::= ContainedPpeAssoc
  
  syntax SubCmpAccessSpec ::= SubPgmAccessSpec 
                            | SubPgmGroupAccessSpec 
                            | DataAccessSpec
                            | BusAccessSpec

  
  syntax FetRefinement ::= AbstractFetRefinement 
                         | PortRefinement 
                         | FetGroupRefinement 
                         | SubCmpAccessRefinement 
                         | ParameterRefinement 
                         | AbstractFetRefinement ArrayDimensionFeatrueContrained
                         | PortRefinement ArrayDimensionFeatrueContrained
                         | FetGroupRefinement ArrayDimensionFeatrueContrained
                         | SubCmpAccessRefinement ArrayDimensionFeatrueContrained
                         | ParameterRefinement ArrayDimensionFeatrueContrained
						 
  syntax SubCmpAccessRefinement ::= SubPgmAccessRefinement
                                  | SubPgmGroupAccessRefinement
                                  | DataAccessRefinement
                                  | BusAccessRefinement    
endmodule

module FEATURESHAREACCESS

//imports FEATURESHAREACCESS-SYNTAX
endmodule