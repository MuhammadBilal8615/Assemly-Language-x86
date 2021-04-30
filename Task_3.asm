Title Draw_Border

.model small
.stack 100h
.data


count db 0
Row_poistion dw 0
Column_poistion dw 0


.code
main proc
mov ax,@data
mov ds,ax

	

	mov al,03   ; Cleat Screen
	mov ah,0
	int 10h
	
	
	mov al,13h     ; Video Mode
	mov ah,00h
	int 10h
	
	mov ah,0bh     ; Initialization
	mov bh,00h
	mov bl,00h


	mov Row_poistion, 5
	mov Column_poistion,20
	
	mov si,30
    
	
outt:
		
	mov di,30
inn:

	mov ah,0ch     ; Printing pixel
	mov al,0Fh ;color = white
	mov bh,0   ; Page number
	MOV cx,Row_poistion       ;SET ROW 
	MOV dx,Column_poistion    ;SET COLUMN	
	INT 10H    				;CALLING BIOS		
	
	
	add Column_poistion,1		
	
	dec di
	cmp di,0
	
	
jne inn
    mov Column_poistion,20
	add Row_poistion,1 
	 				
	dec si
	cmp si,0
	
jne outt




	


	exit:
mov ax,4c00h
int 21h
main endp                                                                                   


end main