module FEATURESHAREACCESS-SYNTAX

syntax Feature ::= AbstractFetSpec MSemicolon 
			| PortSpec MSemicolon 
			| FetGroupSpec MSemicolon 
			| SubCmpAccessSpec MSemicolon
			| ParameterSpec MSemicolon
			| AbstractFetSpec ArrayDimensionFeatrueContrained MSemicolon 
			| PortSpec ArrayDimensionFeatrueContrained MSemicolon 
			| FetGroupSpec ArrayDimensionFeatrueContrained MSemicolon 
			| SubCmpAccessSpec ArrayDimensionFeatrueContrained MSemicolon 
			| ParameterSpec ArrayDimensionFeatrueContrained MSemicolon 
syntax ArrayDimensionFeatrueContrained ::= ArrayDimension 
			| MBraceLeft FeatrueContrainedPpeAssoc MBraceRight 
			| ArrayDimension MBraceLeft FeatrueContrainedPpeAssoc MBraceRight 
syntax FeatrueContrainedPpeAssoc ::= ContainedPpeAssoc 
			| PpeAssoc 
			| ContainedPpeAssoc FeatrueContrainedPpeAssoc
			| PpeAssoc FeatrueContrainedPpeAssoc
syntax SubCmpAccessSpec ::= SubPgmAccessSpec 
			| SubPgmGroupAccessSpec 
			| DataAccessSpec 
			| BusAccessSpec 
syntax FetRefinement ::= AbstractFetRefinement MSemicolon 
		//	| PortRefinement MSemicolon 
		//	| FetGroupRefinement MSemicolon 
		//	| SubCmpAccessRefinement MSemicolon 
		//	| ParameterRefinement MSemicolon 
			| AbstractFetRefinement ArrayDimensionFeatrueContrained MSemicolon 
		//	| PortRefinement ArrayDimensionFeatrueContrained MSemicolon 
		//	| FetGroupRefinement ArrayDimensionFeatrueContrained MSemicolon 
		//	| SubCmpAccessRefinement ArrayDimensionFeatrueContrained MSemicolon 
		//	| ParameterRefinement ArrayDimensionFeatrueContrained MSemicolon 
syntax SubCmpAccessRefinement ::= SubPgmAccessRefinement 
			| SubPgmGroupAccessRefinement 
			| DataAccessRefinement 
			| BusAccessRefinement 
endmodule
