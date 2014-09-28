module COMMONDEF

  syntax NODEF::="not define"
  syntax NoneStatement::="none"

  
  syntax FormatEffector ::= NODEF  
  syntax OtherControlCharacter ::= NODEF  
  
  syntax ProtoTypePpeAssoc ::= PpeAssoc
                             | ProtoTypePpeAssoc ProtoTypePpeAssoc

  syntax ArraySelectionName ::= NODEF

  syntax SelectionRange ::= NODEF
  
  syntax CmpTypePpeAssoc ::= NODEF



/* ------	c:\k\AbstractFeature.k	------ */
syntax PortRefinement ::= NODEF
syntax FetGroupRefinement ::= NODEF
syntax SubCmpAccessRefinement ::= NODEF
syntax ParameterRefinement ::= NODEF


/* ------	c:\k\AccessConnection.k	------ */
syntax ConnectionSymbol ::= NODEF
syntax FetGroupId ::= NODEF
syntax SubCmpId ::= NODEF
syntax SubPgmCallId ::= NODEF
syntax ProvidesSubPgmAccessId ::= NODEF


/* ------	c:\k\AnnexSubclauseLibrary.k	------ */
syntax InModes ::= NODEF
syntax Annex ::= NODEF


/* ------	c:\k\BusComponentAccess.k	------ */
syntax DataCmpAccessId ::= NODEF
syntax ProtoTypeId ::= NODEF
syntax UniCmpClassifierRef ::= NODEF


/* ------	c:\k\Commondef.k	------ */
syntax PpeAssoc ::= NODEF


/* ------	c:\k\ComponentImplementation.k	------ */
syntax CmpCategory ::= NODEF
syntax CmpTypeId ::= NODEF
syntax ProtoTypeBindings ::= NODEF
syntax ProtoTypeList ::= NODEF
syntax ModesSubclause ::= NODEF
syntax PpeAssocList ::= NODEF
syntax ContainedPpeAssocList ::= NODEF
syntax AnnexSubclause ::= NODEF
syntax SubCmp ::= NODEF
syntax SubPgmCallSeq ::= NODEF
syntax Connection ::= NODEF
syntax FlowImpl ::= NODEF
syntax EndToEndFlowSpec ::= NODEF
syntax PkgName ::= NODEF
syntax SubCmpRefinement ::= NODEF
syntax ConnectionRefinement ::= NODEF
syntax ProtoTypeRefinement ::= NODEF
syntax FlowImplRefinement ::= NODEF
syntax EndToEndFlowSpecRefinement ::= NODEF


/* ------	c:\k\ComponentType.k	------ */
syntax RequiresModesSubclause ::= NODEF
syntax ProtoType ::= NODEF
syntax Feature ::= NODEF
syntax FlowSpec ::= NODEF
syntax ContainedPpeAssoc ::= NODEF


/* ------	c:\k\Connection.k	------ */
syntax FetConnection ::= NODEF
syntax PortConnection ::= NODEF
syntax ParameterConnection ::= NODEF
syntax AccessConnection ::= NODEF
syntax FetGroupConnection ::= NODEF
syntax InModesAndTransitions ::= NODEF
syntax FetConnectionRefinement ::= NODEF
syntax PortConnectionRefinement ::= NODEF
syntax ParameterConnectionRefinement ::= NODEF
syntax AccessConnectionRefinement ::= NODEF
syntax FetGroupConnectionRefinement ::= NODEF


/* ------	c:\k\DataComponentAccess.k	------ */
syntax DataUniCmpClassifierRef ::= NODEF


/* ------	c:\k\EndToEndFlow.k	------ */
syntax ConnectionId ::= NODEF
syntax SubCmpFlowId ::= NODEF


/* ------	c:\k\FeatureConnection.k	------ */


/* ------	c:\k\FeatureGroupConnection.k	------ */
syntax CmpTypeFetGroupId ::= NODEF


/* ------	c:\k\FeatureGroupType.k	------ */
syntax FeatureList ::= NODEF
syntax ProtoTypeRefinementList ::= NODEF
syntax FetRefinement ::= NODEF
syntax FetProtoTypeId ::= NODEF


/* ------	c:\k\FeatureShareAccess.k	------ */
syntax AbstractFetSpec ::= NODEF
syntax PortSpec ::= NODEF
syntax FetGroupSpec ::= NODEF
syntax ParameterSpec ::= NODEF
syntax ArrayDimension ::= NODEF
syntax SubPgmAccessSpec ::= NODEF
syntax SubPgmGroupAccessSpec ::= NODEF
syntax DataAccessSpec ::= NODEF
syntax BusAccessSpec ::= NODEF
syntax AbstractFetRefinement ::= NODEF
syntax SubPgmAccessRefinement ::= NODEF
syntax SubPgmGroupAccessRefinement ::= NODEF
syntax DataAccessRefinement ::= NODEF
syntax BusAccessRefinement ::= NODEF


/* ------	c:\k\FlowImplementation.k	------ */
syntax FlowId ::= NODEF
syntax OutFlowFetId ::= NODEF
syntax InFlowFetId ::= NODEF
syntax DataSubCmpId ::= NODEF
syntax RequiresDataAccessId ::= NODEF
syntax ProvidesDataAccessId ::= NODEF


/* ------	c:\k\FlowImplementation1.k	------ */


/* ------	c:\k\FlowSpecification.k	------ */
syntax FetId ::= NODEF


/* ------	c:\k\LexicalElement.k	------ */
syntax Int ::= NODEF
syntax Numeral ::= NODEF
syntax String ::= NODEF


/* ------	c:\k\ModesAndModeTransition.k	------ */
syntax ModeList ::= NODEF
syntax PortId ::= NODEF


/* ------	c:\k\Package.k	------ */
syntax AnnexLibrary ::= NODEF
syntax CmpType ::= NODEF
syntax CmpImpl ::= NODEF
syntax CmpTypeExt ::= NODEF
syntax CmpImplExt ::= NODEF
syntax FetGroupType ::= NODEF
syntax FetGroupTypeExt ::= NODEF
syntax PpeSetId ::= NODEF
syntax UniCmpTypeRef ::= NODEF
syntax UniFetGroupTypeRef ::= NODEF


/* ------	c:\k\ParameterConnection.k	------ */
syntax ParameterId ::= NODEF
syntax CmpTypePortId ::= NODEF
syntax ElementDataAccessId ::= NODEF


/* ------	c:\k\Port.k	------ */


/* ------	c:\k\PortConnection.k	------ */


/* ------	c:\k\PropertyAssociation.k	------ */
syntax PpeNameId ::= NODEF
syntax AnnexId ::= NODEF
syntax PpeExpression ::= NODEF
syntax BusUniCmpClassifierRef ::= NODEF


/* ------	c:\k\PropertyConstant.k	------ */
syntax PpeTypeDesignator ::= NODEF
syntax ListOf ::= NODEF
syntax PpeListValue ::= NODEF


/* ------	c:\k\PropertyDefinition.k	------ */
// syntax NamedElementQualifiedMetaModelId ::= NODEF


/* ------	c:\k\PropertyExpression.k	------ */
syntax RealTerm ::= NODEF
syntax SignedAadlrealOrConstant ::= NODEF
syntax SignedAadlintegerOrConstant ::= NODEF
syntax UnitId ::= NODEF
syntax PpeConstantId ::= NODEF
syntax UniCmpImplRef ::= NODEF
syntax ContainedModelElementPath ::= NODEF
syntax PpeValue ::= NODEF


/* ------	c:\k\PropertySet.k	------ */
syntax ImportDecl ::= NODEF
syntax PpeTypeDecl ::= NODEF
syntax PpeDefDecl ::= NODEF
syntax PpeConstant ::= NODEF


/* ------	c:\k\PropertyType.k	------ */
syntax NumericLiteral ::= NODEF
syntax PpeConstantTerm ::= NODEF
syntax RealLiteral ::= NODEF


/* ------	c:\k\ProtoType.k	------ */
syntax ProtoTypePpeAssoc ::= NODEF


/* ------	c:\k\Subcomponent.k	------ */
syntax CmpInModes ::= NODEF
syntax UniPpeConstantId ::= NODEF
syntax UniPpeId ::= NODEF



endmodule 
