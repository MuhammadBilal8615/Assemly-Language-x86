Title Draw_Border

.model small
.stack 100h
.data


count db 0
Row_poistion db 0
Column_poistion db 0

name1 db "Muhammad Bilal$"

.code
main proc
mov ax,@data
mov ds,ax

	mov al,12
	mov ah,0
	int 10h

	;-------clearing the screen---------

	mov al,03
	mov ah,0
	int 10h

	;-------Print one ASCII---------

	mov Row_poistion, 5
	mov Column_poistion,20
	
	mov si,10	

    
	
outt:
		
	mov di,35
inn:

    MOV AH,2                ;SET CURSOR POSITION                 
	MOV DH,Row_poistion     ;SET ROW 
	MOV DL,Column_poistion  ;SET COLUMN	
	INT 10H    				;CALLING BIOS	
	
	
	mov ah,09h
	mov al,'.'
	mov bh,0
	mov bl,02
	mov cx,1
	int 10h
	
	add Column_poistion,1		
	
	dec di
	cmp di,0
	
jne inn
    mov Column_poistion,20
	add Row_poistion,1

    MOV AH,2                ;SET CURSOR POSITION                 
	MOV DH,Row_poistion     ;SET ROW 
	MOV DL,Column_poistion ;SET COLUMN	
	
	INT 10H    				;CALLING BIOS
	dec si
	cmp si,0
	
jne outt




	


	exit:
mov ax,4c00h
int 21h
main endp                                                                                   


end main