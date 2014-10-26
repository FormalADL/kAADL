module PROPERTYDEFINATION-SYNTAX

syntax PpeDefDecl ::= Id Mcolon PpeDefDeclAssocDef MSemicolon 
syntax PpeDefDeclAssocDef ::= Minherit SingleValuedPpe Mapplies Mto MBracketLeft PpeOwnerList MBracketRight 
			| Minherit MultiValuedPpe Mapplies Mto MBracketLeft PpeOwnerList MBracketRight 
			| SingleValuedPpe Mapplies Mto MBracketLeft PpeOwnerList MBracketRight 
			| MultiValuedPpe Mapplies Mto MBracketLeft PpeOwnerList MBracketRight 
syntax SingleValuedPpe ::= PpeTypeDesignator 
			| PpeTypeDesignator MRoughArrow DefaultPpeExpression 
syntax DefaultPpeExpression ::= PpeExpression | MBracketLeft BooleanTerm MBracketRight 
syntax MultiValuedPpe ::= ListOf PpeTypeDesignator MRoughArrow DefaultPpeListValue 
			| ListOf PpeTypeDesignator 
syntax ListOf ::= Mlist Mof 
			| Mlist Mof ListOf 
syntax DefaultPpeListValue ::= PpeListValue 
syntax PpeOwnerList ::= PpeOwner 
			| PpeOwner MComma PpeOwnerList 
syntax PpeOwner ::= Id 
			| UniClassifierRef 
syntax UniClassifierRef ::= UniCmpClassifierRef 
			| UniFetGroupTypeRef 
endmodule
