

INCLUDE Irvine32.inc
.data
;Write a program that takes an array of numbers (with both positive and negative values) 
;from the user (or declare ) and displays the total no. of  positive numbers from the array.
msg db "Total number of positive numbers: ", 0


.code
count PROC p1:DWORD, p2:DWORD
    
    push ebp
    mov ebp,esp
    mov ecx, [ebp + 8]
    mov eax, [ebp + 12] 
    mov edx, 0
Loop_Start:
    cmp eax, 0
    je Loop_End
    mov esi, [ecx]
    cmp esi, 0
    jle not_Positive
    inc edx

not_Positive:
    add ecx, 4
    dec eax
    jmp Loop_Start
Loop_End:
    mov eax, edx
    mov esp, ebp
    pop ebp
    ret
count ENDP
end