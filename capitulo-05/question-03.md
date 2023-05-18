# Questão 03 - Capítulo 05

## Question

**<p>3. Given the following while loops implemented using conditional and unconditional jumps, indicate how many times the body of each loop will be executed:</p>**

**A.**
```asm
            mov i,2
while04:    cmp i,8
            jge endwhile04
            ; body of loop
            add i,2
            jmp while04
endwhile04: nop 
```

**B.**
```asm
             mov k,0
repeat05:    nop
             ; body of loop
             add k,3
             cmp k,3
             jl repeat05
endrepeat05: nop 
```

**C.**
```asm
            mov j,1
while06:    cmp j,0
            jg endwhile06
            ; body of loop
            inc j
            jmp while06
endwhile06: nop 
```

## Response

**A.**
```
executa o body loop três vezes.
```

**B.**
```
executa o body loop apenas uma vez.
```

**C.**
```
não executa o body loop nenhuma vez.
```
