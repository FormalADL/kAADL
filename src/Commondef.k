module COMMONDEF

  syntax NODEF::="not define"
  syntax NoneStatement::="none"

  
/*
  Temp NODEF
*/
  syntax FormatEffector ::= NODEF  
  syntax OtherControlCharacter ::= NODEF  
  
//defined in Prototype.k, used in PrototypeAssocDef
  syntax ProtoTypePpeAssoc ::= PpeAssoc
                             | ProtoTypePpeAssoc ProtoTypePpeAssoc
/* defined in sumcomponent, but no relation with others */

  syntax ArraySelectionName ::= NODEF
  syntax ArraySelection ::= NODEF
  syntax SelectionRange ::= NODEF
  syntax CmpTypePpeAssoc ::= NODEF
  syntax FlowImplRefinement ::= NODEF
  syntax EndToEndFlowSpecRefinement ::= NODEF
endmodule 