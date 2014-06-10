require "Commondef.k"
require "Package.k"
require "ComponentType.k"
require "ComponentImplementation.k"
require "Subcomponent.k"
require "ProtoType.k"
require "AnnexSubclauseLibrary.k"
require "SubprogramCall.k" 
require "FeatureShareAccess.k"
require "AbstractFeature.k"
require "FeatureGroupType.k"
require "Port.k"
require "SubprogramGroupAccess.k"
require "SubprogramParameter.k"
require "DataComponentAccess.k"
require "BusComponentAccess.k"
require "Connection.k"
require "FeatureConnection.k"
require "PortConnection.k"
require "ParameterConnection.k"
require "AccessConnection.k"
require "FeatureGroupConnection.k"
require "FlowSpecification.k"
require "FlowImplementation1.k"
require "EndToEndFlow.k"
require "PropertySet.k"
require "PropertyType.k"
require "PropertyDefinition.k"
require "PropertyConstant.k"
require "PropertyAssociation.k"
require "PropertyExpression.k"
require "ModesAndModeTransition.k"
require "LexicalElement.k"

module AADL-SYNTAX

  imports COMMONDEF
  imports PACKAGE-SYNTAX
  imports COMPONENTTYPE-SYNTAX
  imports COMPONENTIMPLEMENTATION-SYNTAX
  imports ANNEXSUBCLAUSELIBRARY-SYNTAX
  imports FEATURESHAREACCESS-SYNTAX
  imports ABSTRACTFEATURE-SYNTAX
  imports FEATUREGROUPTYPE-SYNATX
  imports PORT-SYNTAX
  imports FLOWSPECIFICATION-SYNTAX
  imports FLOWIMPLEMENTATION-SYNTAX
  imports LEXICALELEMENT-SYNTAX
  imports SUBPROGRAMCALL-SYNTAX
  imports SUBCOMPONENT-SYNTAX
  imports SUBPROGRAMGROUPACCESS-SYNTAX
  imports SUBPROGRAMPARAMETER-SYNTAX 
  imports FEATURECONNECTION-SYNTAX
  imports FEATUREGROUPCONNECTION-SYNTAX
  imports PROTOTYPE-SYNTAX 
  imports DATACOMPONENTACCESS-SYNTAX
  imports PORTCONNECTION-SYNTAX
  imports CONNECTION-SYNTAX
  imports ACCESSCONNECTION-SYNTAX
  imports PARAMETERCONNECTION-SYNTAX
  imports ENDTOENDFLOW-SYNTAX
  imports BUSCOMPONENTACCESS-SYNTAX 
  imports MODESANDMODETRANSITION-SYNTAX
 
  imports PROPERTYSET-SYNTAX
  imports PROPERTYASSOCIATION-SYNTAX
  imports PROPERTYCONSTANT-SYNTAX
  imports PROPERTYTYPE-SYNTAX
  imports PROPERTYDEFINATION-SYNTAX
  imports PROPERTYEXPRESSION-SYNTAX

endmodule


module AADL
  imports AADL-SYNTAX
  syntax AADLSpecification ::= PkgSpecPpeSetList
  syntax PkgSpecPpeSetList ::= PkgSpec 
                             | PpeSet
           					 | PkgSpecPpeSetList PkgSpecPpeSetList
endmodule






