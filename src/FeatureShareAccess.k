module FEATURESHAREACCESS-SYNTAX

//  syntax Feature ::= AbstractPortGroupAccessParameter  MSemicolon  
//                   | AbstractPortGroupAccessParameter ArrayDimensionFeatrueContrained  MSemicolon   

//  syntax AbstractPortGroupAccessParameter ::= AbstractFetSpec
//                                            | PortSpec
//                                            | FetGroupSpec
//                                            | SubCmpAccessSpec
//                                            | ParameterSpec

  syntax Feature ::= AbstractFetSpec MSemicolon 
                   | PortSpec MSemicolon
                   | FetGroupSpec MSemicolon
                   | SubCmpAccessSpec MSemicolon
                   | ParameterSpec MSemicolon
                   | AbstractFetSpec ArrayDimensionFeatrueContrained MSemicolon
                   | PortSpec ArrayDimensionFeatrueContrained MSemicolon
                   | FetGroupSpec ArrayDimensionFeatrueContrained MSemicolon
                   | SubCmpAccessSpec ArrayDimensionFeatrueContrained MSemicolon
                   | ParameterSpec ArrayDimensionFeatrueContrained  MSemicolon
                   
  syntax ArrayDimensionFeatrueContrained ::= ArrayDimension 
                                           |  MBraceLeft  FeatrueContrainedPpeAssoc  MBraceRight 
                                           | ArrayDimension  MBraceLeft  FeatrueContrainedPpeAssoc  MBraceRight 
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
