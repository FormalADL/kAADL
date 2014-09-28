module PROPERTYDEFINATION-SYNTAX

	syntax PpeDefDecl ::= PpeNameId  Mcolon  PpeDefDeclAssocDef  MSemicolon 
	syntax PpeNameId ::= Id
	syntax PpeDefDeclAssocDef ::=  Minherit  SingleValuedPpe  Mapplies   Mto  PpeOwnerList 
				   |   Minherit  MultiValuedPpe  Mapplies   Mto  PpeOwnerList 
				   |   SingleValuedPpe  Mapplies   Mto  PpeOwnerList 
				   |   MultiValuedPpe  Mapplies   Mto  PpeOwnerList 
	syntax SingleValuedPpe ::= PpeTypeDesignator | PpeTypeDesignator  MRoughArrow  DefaultPpeExpression
        syntax DefaultPpeExpression ::= PpeExpression
	syntax MultiValuedPpe ::= ListOf PpeTypeDesignator  MRoughArrow  DefaultPpeListValue
				| ListOf PpeTypeDesignator 
        syntax ListOf ::=  Mlist   Mof   |   Mlist   Mof  ListOf 
        syntax DefaultPpeListValue ::= PpeListValue
	syntax PpeOwnerList ::= PpeOwner | PpeOwner  MComma  PpeOwnerList
        syntax PpeOwner ::= NamedElementQualifiedMetaModelId | UniClassifierRef
	syntax UniClassifierRef ::= UniCmpClassifierRef | UniFetGroupTypeRef


endmodule

module PROPERTYDEFINATION

//  imports PROPERTYDEFINATION-SYNTAX
endmodule
