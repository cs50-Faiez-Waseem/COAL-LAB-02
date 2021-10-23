.model small      ; .model small means program less memory consume 
.stack 100h
.data
       msg db "SZABIST $"  ; msg is a variable here  db is called databyte can be different accorrding to size
.code ; code start
main proc ; similar like function
mov ax,@data  ;data segment initialization & then moved to accumalator
mov ds,ax  ; ds is data register 
mov ah ,09h    ;string display  || acumalator high  || 09h to print
mov dx,offset msg
int 21h
mov ah,4ch       ;DOS exit function
int 21h    
main endp
end  
; difference between stack100h and org100h