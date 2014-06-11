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
  
  syntax SubCmpAccessSpec ::= SubprogramAccessSpec 
                            | SubprogramGroupAccessSpec 
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
						 
  syntax SubCmpAccessRefinement ::= SubprogramAccessRefinement
                                  | SubprogramGroupAccessRefinement
                                  | DataAccessRefinement
                                  | BusAccessRefinement    
endmodule

module FEATURESHAREACCESS

//imports FEATURESHAREACCESS-SYNTAX
endmodule