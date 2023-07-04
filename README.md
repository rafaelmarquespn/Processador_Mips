• div $t1, $t2 *OK*
• beq/bne $t1, $zero, LABEL *OK*
• addi/ $t2, $t3, -10 *OK*
• andi/ori/xori $t2, $t3, -10 *OK*
lw $t0, OFFSET($s3) 
• add/sub/and/or/nor/xor $t0, $s2, $t0
• sw $t0, OFFSET($s3)
• j LABEL
• jr $t0
• jal LABEL
• slt $t1, $t2, $t3
• lui $t1, 0xXXXX
• addu/subu $t1, $t2, $t3
• sll/srl $t2, $t3, 10
• mult $t1, $t2 *OK*