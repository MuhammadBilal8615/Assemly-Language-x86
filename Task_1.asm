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
	
	mov si,30

top:
	
	MOV AH,2                ;SET CURSOR POSITION                 
	MOV DH,Row_poistion     ;SET ROW 
	MOV DL,Column_poistion  ;SET COLUMN	
	INT 10H                 ;CALLING BIOS

	add Column_poistion,1
	mov ah,09h
	mov al,'$'
	mov bh,0
	mov bl,02
	mov cx,1
	int 10h
	
	dec si
	cmp si,0
	
jne top



  	mov si,5

right:
	
	MOV AH,2                ;SET CURSOR POSITION                 
	MOV DH,Row_poistion     ;SET ROW 
	MOV DL,Column_poistion  ;SET COLUMN	
	INT 10H                 ;CALLING BIOS

	add Row_poistion,1
	mov ah,09h
	mov al,'$'
	mov bh,0
	mov bl,02
	mov cx,1
	int 10h
	
	dec si
	cmp si,0
	
jne right


mov si,31

bottom:
	
	MOV AH,2                ;SET CURSOR POSITION                 
	MOV DH,Row_poistion     ;SET ROW 
	MOV DL,Column_poistion  ;SET COLUMN	
	INT 10H                 ;CALLING BIOS

	sub Column_poistion,1
	mov ah,09h
	mov al,'$'
	mov bh,0
	mov bl,02
	mov cx,1
	int 10h
	
	dec si
	cmp si,0
	
jne bottom

















    mov Row_poistion, 5
	mov Column_poistion,20
	mov si,5

left:
	
	MOV AH,2                ;SET CURSOR POSITION                 
	MOV DH,Row_poistion     ;SET ROW 
	MOV DL,Column_poistion  ;SET COLUMN	
	INT 10H                 ;CALLING BIOS

	add Row_poistion,1
	mov ah,09h
	mov al,'$'
	mov bh,0
	mov bl,02
	mov cx,1
	int 10h
	
	dec si
	cmp si,0
	
jne left






    mov Row_poistion, 7
	mov Column_poistion,25


string:
	

	MOV AH,02H
	MOV DH, 8  ;Row Number 
	MOV DL,  27  ;Column Number
	INT 10H	
 
	lea dx, name1
	mov ah, 9
	int 21h 
	
	
	
	
	


	exit:
mov ax,4c00h
int 21h
main endp                                                                                   


end main