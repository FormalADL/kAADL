module SUBPROGRAMCALL-SYNTAX

syntax SubPgmCallSeq ::= Id Mcolon MBraceLeft SubPgmCallList MBraceRight MSemicolon 
			| Id Mcolon MBraceLeft SubPgmCallList MBraceRight MBraceLeft CallSequencePpeAssocList MBraceRight MSemicolon 
			| Id Mcolon MBraceLeft SubPgmCallList MBraceRight InModes MSemicolon 
			| Id Mcolon MBraceLeft SubPgmCallList MBraceRight MBraceLeft CallSequencePpeAssocList MBraceRight InModes MSemicolon 
syntax SubPgmCallList ::= SubPgmCall 
			| SubPgmCallList SubPgmCallList 
syntax CallSequencePpeAssocList ::= PpeAssoc 
			| CallSequencePpeAssocList CallSequencePpeAssocList 
syntax SubPgmCall ::= Id Mcolon Msubprogram CalledSubPgm MSemicolon 
syntax SubPgmCall ::= Id Mcolon Msubprogram CalledSubPgm MBraceLeft SubPgmCallPpeAssocList MBraceRight MSemicolon 
syntax SubPgmCallPpeAssocList ::= PpeAssoc 
			| SubPgmCallPpeAssocList SubPgmCallPpeAssocList 
syntax CalledSubPgm ::= Id 
			| Id MPoint Id 
			| Mprocessor MPoint Id 
endmodule
