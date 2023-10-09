.data 
	g: .word 8
	h: .word 10
	i: .word 4
	j: .word 5
	salida: .asciiz "El resultado es:"
	
.text
	lw $t0, g($zero)
	lw $t1, h($zero)
	lw $t2, i($zero)
	lw $t3, j($zero)

	li $v0, 4 
	la $a0, salida
	syscall
	
	li $v0, 1
	add $a0, $t0, $t1 # suma g + h se guarda en el registro $a0
	add $a1, $t2, $t3 # i + j se guarda en el registro $a1
	sub $a0, $a0, $a1 # (g+h) - (i+j) = a0
	syscall 