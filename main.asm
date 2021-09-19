include tools/texto.asm
.model small
.stack 100h
.data
;================ SEGMENTO DE DATOS ==============================
var db 0ah,0dh,'Bienvenidos al taller de ASM','$'
var2 db 'Luis Crack$'
salto db 0Ah, 24h
;db -> dato byte -> 8 bits
;dw -> dato word -> 16 bits
;dd -> doble word -> 32 bits
.code ;segmento de código
;================== SEGMENTO DE CODIGO ===========================
main:
	mov dx,@data
	mov ds, dx

	;ImprStr var
	;ImprStr salto
	;ImprStr var2
 	;mov cx, SIZEOF var
	;dec cx
	;mov ah, 02h
	;mov si, 0000h
	;ciclo:
	;	mov dl, var[si]
	;	inc si
	;	int 21h
	;	loop ciclo

	mov cl, 00h
	ciclo:
		cmp cl, 10d
		jz salida
		ImprStr var
		ImprStr salto
		inc cl
		jmp ciclo
	salida:
		mov ah,4ch
		int 21h
end main
