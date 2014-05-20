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
require "PropertyDefination.k"
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
  imports DATACOMPONENTACCESS-SYNTAX
  imports PORTCONNECTION-SYNTAX
  imports CONNECTION-SYNTAX
  imports ACCESSCONNECTION-SYNTAX
  imports PARAMETERCONNECTION-SYNTAX
  imports ENDTOENDFLOW-SYNTAX
  imports BUSCOMPONENTACCESS-SYNTAX
  imports MODESANDMODETRANSITION-SYNTAX


endmodule

module AADL
  imports AADL-SYNTAX
  syntax AADLSpecification ::= PackageSpecPropertySetList
  syntax PackageSpecPropertySetList ::= PackageSpec | PropertySet
           |  PackageSpec PackageSpecPropertySetList
           |  PropertySet PackageSpecPropertySetList

  configuration <SYSTEM color="red">
                  <SoftwareComponent color="orange">
                    <Process color="yellow">.Set</Process>
                    <Thread color="cyan">.Set</Thread>
                    <ThreadGroup color="blue">.Set</ThreadGroup>
                    <Data color="green">.Set</Data>
                    <Subprogram color="pink">.Set</Subprogram>
                  </SoftwareComponent>
                  
                  <ExePlatform color="purple">
                    <Processor color="violet">.Set</Processor>
                    <Memory color="black">.Set</Memory>
                    <Bus color="green">.Set</Bus>
                    <Device color="white">.Set</Device>
                  </ExePlatform>
                  <genv color="pink"> .Map </genv>
                  <store color="white"> .Map </store>
                </SYSTEM>
endmodule



