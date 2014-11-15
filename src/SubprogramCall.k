module SUBPROGRAMCALL-SYNTAX

syntax SubPgmCallSeq ::= Id Mcolon MBraceLeft SubPgmCallList MBraceRight MSemicolon 
			| Id Mcolon MBraceLeft SubPgmCallList MBraceRight MBraceLeft CallSequencePpeAssocList MBraceRight MSemicolon 
			| Id Mcolon MBraceLeft SubPgmCallList MBraceRight InModes MSemicolon 
			| Id Mcolon MBraceLeft SubPgmCallList MBraceRight MBraceLeft CallSequencePpeAssocList MBraceRight InModes MSemicolon 
syntax SubPgmCallList ::= SubPgmCall 
			| SubPgmCall SubPgmCallList 
syntax CallSequencePpeAssocList ::= PpeAssoc 
			| PpeAssoc CallSequencePpeAssocList 

syntax SubPgmCall ::= Id Mcolon Msubprogram AmbProcessorPointId MSemicolon 
			| Id Mcolon Msubprogram CalledSubPgm MBraceLeft SubPgmCallPpeAssocList MBraceRight MSemicolon 
			| Id Mcolon Msubprogram Id MPoint Id MSemicolon 
			| AmbIdColonSubprogramIdSemicolon 

syntax SubPgmCallPpeAssocList ::= PpeAssoc 
			| PpeAssoc SubPgmCallPpeAssocList 
syntax CalledSubPgm ::= AmbIdPointId
			| AmbProcessorPointId
endmodule
