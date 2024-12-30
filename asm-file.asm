

INCLUDE Irvine32.inc
.data
;Write a program that takes an array of numbers (with both positive and negative values) 
;from the user (or declare ) and displays the total no. of  positive numbers from the array.
msg db "Total number of positive numbers: ", 0


.code
count PROC p1:DWORD, p2:DWORD
    
    push ebp
    mov ebp,esp
    mov esi, [ebp + 8]
    mov ecx, [ebp + 12] 
    mov edx, 0
Loop_Start:
    cmp ecx, 0
    je Loop_End
    mov eax, [esi]
    cmp eax, 0
    jle not_Positive
    inc edx

not_Positive:
    add esi, 4
    dec ecx
    jmp Loop_Start
Loop_End:
    mov eax, edx
    mov esp, ebp
    pop ebp

    mov edx, OFFSET msg
    call writestring
    call writedec                ; Display the count of positive numbers
    call crlf
    ret
count ENDP
end