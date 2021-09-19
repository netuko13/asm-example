ImprStr macro cadena
;INT 21H Función 09H
;Visualización de una cadena de caracteres
;LLAMADA:
;AH = 09H
;DS:DX = Segmento: Desplazamiento de la cadena a visualizar (in DX - offset address of string in data segment)
;DS debe apuntar al segmento donde se encuentra la cadena.
;DX debe contener el desplazamiento de la cadena dentro de ese segmento.
  mov ah, 09h
  mov dx, OFFSET cadena
  int 21h
endm
