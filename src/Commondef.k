module COMMONDEF

  syntax NODEF::="not define"
  syntax NoneStatement::="none"

/*
  AADL Keywords definition
*/
  syntax KeyPkg ::= "package"
  syntax KeyEnd ::= "end"
  syntax KeyPublic  ::= "public"
  syntax KeyPrivate ::= "private"
  
  
/*
  Temp NODEF
*/

  syntax UniPpeConstantId ::= NODEF
  syntax UniPpeId ::= NODEF
  syntax FormatEffector ::= NODEF  
  syntax OtherControlCharacter ::= NODEF  
  syntax PpeAssoc ::= NODEF
  syntax ContainedPpeAssoc ::= NODEF
  syntax SubCmpPpeAssoc ::= NODEF  //I guess it's equal to CmpPpeAssoc
  
//defined in Prototype.k, used in PrototypeAssocDef
  syntax ProtoTypePpeAssoc ::= NODEF
                             | ProtoTypePpeAssoc ProtoTypePpeAssoc
  
endmodule 