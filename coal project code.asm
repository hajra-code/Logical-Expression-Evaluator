.model small
.stack 100h
.data
    ; ============= MAIN MENU =============
    welcome_msg    db 10,13,10,13,'  LOGICAL EXPRESSION EVALUATOR',10,13
                   db '  ================================',10,13,10,13
                   db '  1. Simple Logic Evaluator',10,13
                   db '  2. Real Life Scenarios',10,13
                   db '  3. Exit Program',10,13,10,13
                   db '  Enter choice (1-3): $'
    
    ; ============= SIMPLE EVALUATOR =============
    simple_menu    db 10,13,10,13,'  SIMPLE LOGIC EVALUATOR',10,13
                   db '  ========================',10,13,10,13
                   db '  Operators: & (AND) , | (OR) , ! (NOT)',10,13
                   db '  Use 1 for TRUE, 0 for FALSE',10,13
                   db '  Examples:',10,13
                   db '    1 & 0          = 0',10,13
                   db '    1 | 0          = 1',10,13
                   db '    !1             = 0',10,13
                   db '    (1 & 0) | 1    = 1',10,13,10,13
                   db '  Enter expression or type "back": $'
    
    result_msg     db 10,13,10,13,'  Result: $'
    back_msg       db 10,13,'  Returning to menu...$'
    invalid_exp    db 10,13,'  Invalid expression! Try: 0, 1, !1, (1 & 0)$'
    
    ; ============= SCENARIOS MENU =============
    scenario_menu  db 10,13,10,13,'  REAL LIFE SCENARIOS',10,13
                   db '  ====================',10,13,10,13
                   db '  1. Elevator Door Safety System',10,13
                   db '  2. Bank Vault Access System',10,13
                   db '  3. Back to Main Menu',10,13,10,13
                   db '  Enter choice (1-3): $'
    
    ; ============= ELEVATOR SYSTEM =============
    elev_title     db 10,13,10,13,'  ELEVATOR DOOR SAFETY SYSTEM',10,13
                   db '  ================================',10,13,10,13,'$'
    
    elev_formula   db '  Door = ((Floor AND NOT(Obstruction))',10,13
                   db '          AND (Button OR Timer))',10,13
                   db '          AND NOT(Emergency)',10,13,10,13,'$'
    
    elev_inputs    db '  ENTER INPUTS (1=True, 0=False):',10,13
                   db '  ------------------------------',10,13,10,13,'$'
    
    eq1 db '  1. Is floor aligned?       (1/0): $'
    eq2 db 10,13,'  2. Is obstruction detected? (1/0): $'
    eq3 db 10,13,'  3. Is close button pressed? (1/0): $'
    eq4 db 10,13,'  4. Has timer timed out?     (1/0): $'
    eq5 db 10,13,'  5. Is emergency stop active?(1/0): $'
    
    elev_calc      db 10,13,10,13,'  CALCULATION STEPS:',10,13
                   db '  -----------------',10,13,10,13,'$'
    
    es1 db '  Step 1: NOT(Obstruction) = $'
    es2 db 10,13,'  Step 2: Floor AND Step1 = $'
    es3 db 10,13,'  Step 3: Button OR Timer = $'
    es4 db 10,13,'  Step 4: Step2 AND Step3 = $'
    es5 db 10,13,'  Step 5: NOT(Emergency) = $'
    es6 db '  Step 6: Final = Step4 AND Step5 = $'
    
    ; ============= BANK VAULT SYSTEM =============
    bank_title     db 10,13,10,13,'  BANK VAULT ACCESS SYSTEM',10,13
                   db '  ============================',10,13,10,13,'$'
    
    bank_formula   db '  Access = (ManagerVote OR (CEO AND NOT(Alert)))',10,13
                   db '           AND (Normal XOR Emergency)',10,13,10,13
                   db '  ManagerVote = (M1 AND M2) OR (M1 AND M3) OR (M2 AND M3)',10,13
                   db '  Normal = NormalHours AND PhysicalKey',10,13
                   db '  Emergency = EmergencyHours AND Biometric',10,13,10,13,'$'
    
    bank_inputs    db '  ENTER INPUTS (1=True, 0=False):',10,13
                   db '  ------------------------------',10,13,10,13,'$'
    
    bq1 db '  1. Manager 1 approves?     (1/0): $'
    bq2 db 10,13,'  2. Manager 2 approves?     (1/0): $'
    bq3 db 10,13,'  3. Manager 3 approves?     (1/0): $'
    bq4 db 10,13,'  4. CEO approves?           (1/0): $'
    bq5 db 10,13,'  5. Security alert active?  (1/0): $'
    bq6 db 10,13,'  6. Normal hours?           (1/0): $'
    bq7 db 10,13,'  7. Physical key present?   (1/0): $'
    bq8 db 10,13,'  8. Emergency hours?        (1/0): $'
    bq9 db 10,13,'  9. Biometric verified?     (1/0): $'
    
    bank_calc      db 10,13,10,13,'  CALCULATION STEPS:',10,13
                   db '  -----------------',10,13,10,13,'$'
    
    bs1 db '  Step 1: M1 AND M2 = $'
    bs2 db 10,13,'  Step 2: M1 AND M3 = $'
    bs3 db 10,13,'  Step 3: M2 AND M3 = $'
    bs4 db '  Step 4: ManagerVote = Step1 OR Step2 OR Step3 = $'
    bs5 db 10,13,'  Step 5: NOT(Alert) = $'
    bs6 db 10,13,'  Step 6: CEO AND Step5 = $'
    bs7 db 10,13,'  Step 7: Part1 = Step4 OR Step6 = $'
    bs8 db 10,13,'  Step 8: Normal = NormalHours AND PhysicalKey = $'
    bs9 db 10,13,'  Step 9: Emergency = EmergencyHours AND Biometric = $'
    bs10 db 10,13,'  Step 10: Normal XOR Emergency = $'
    bs11 db '  Step 11: Final = Step7 AND Step10 = $'
    
    ; ============= COMMON STRINGS =============
    true_msg       db '1 (TRUE)$'
    false_msg      db '0 (FALSE)$'
    granted_msg    db 10,13,10,13,'  >>> ACCESS GRANTED <<<$'
    denied_msg     db 10,13,10,13,'  >>> ACCESS DENIED <<<$'
    cont_msg       db 10,13,10,13,'  Press any key to continue...$'
    invalid_msg    db 10,13,'  Invalid input! Use 0 or 1 only.$'
    newline        db 10,13,'$'
    
    ; ============= VARIABLES =============
    choice db ?
    
    ; Elevator variables
    floor      db ?
    obst       db ?
    button     db ?
    timer_val  db ?
    emergency  db ?
    
    ; Bank variables
    manager1   db ?
    manager2   db ?
    manager3   db ?
    ceo        db ?
    alert      db ?
    normal_hrs db ?
    phys_key   db ?
    emerg_hrs  db ?
    biometric  db ?
    
    ; Temporary calculation storage
    temp1 db ?
    temp2 db ?
    temp3 db ?
    temp4 db ?
    temp5 db ?
    final_result db ?
    
    ; Simple evaluator input buffer
    input_buffer db 50 dup('$')
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
main_menu:
    call clear_screen
    
    ; Display main menu
    lea dx, welcome_msg
    mov ah, 09h
    int 21h
    
    ; Get user choice
    mov ah, 01h
    int 21h
    mov choice, al
    
    ; Process choice
    cmp al, '1'
    je simple_evaluator
    cmp al, '2'
    je scenarios
    cmp al, '3'
    je exit_program
    
    ; Invalid choice
    jmp main_menu

simple_evaluator:
    call simple_eval
    jmp main_menu

scenarios:
    call scenario_menu_display
    jmp main_menu

exit_program:
    mov ax, 4c00h
    int 21h
main endp

; ===============================================
; SIMPLE EVALUATOR - COMPLETE EXPRESSION READER
; ===============================================
simple_eval proc
simple_start:
    call clear_screen
    
    ; Display menu
    lea dx, simple_menu
    mov ah, 09h
    int 21h
    
    ; Clear input buffer
    lea di, input_buffer
    mov cx, 50
    mov al, '$'
    rep stosb
    
    ; Read complete expression
    mov cx, 0
    lea si, input_buffer
    
read_full_expression:
    mov ah, 01h
    int 21h
    
    ; Check for Enter key (end of expression)
    cmp al, 13
    je evaluate_full_expression
    
    ; Store character
    mov [si], al
    inc si
    inc cx
    
    ; Check buffer limit
    cmp cx, 49
    jl read_full_expression
    
evaluate_full_expression:
    ; Null terminate
    mov byte ptr [si], '$'
    
    ; Check if empty
    cmp cx, 0
    je empty_input
    
    ; Check for "back" command
    lea si, input_buffer
    mov al, [si]
    cmp al, 'b'
    je check_back_full
    cmp al, 'B'
    je check_back_full
    
    ; Parse the expression
    call parse_expression
    jmp simple_continue

check_back_full:
    ; Check if it's "back"
    mov al, [si+1]
    cmp al, 'a'
    je check_back2
    cmp al, 'A'
    je check_back2
    jmp not_back_command

check_back2:
    mov al, [si+2]
    cmp al, 'c'
    je check_back3
    cmp al, 'C'
    je check_back3
    jmp not_back_command

check_back3:
    mov al, [si+3]
    cmp al, 'k'
    je is_back_command
    cmp al, 'K'
    je is_back_command
    jmp not_back_command

is_back_command:
    lea dx, back_msg
    mov ah, 09h
    int 21h
    mov ah, 08h
    int 21h
    ret

not_back_command:
    ; Not "back", parse it
    call parse_expression
    jmp simple_continue

empty_input:
    lea dx, invalid_exp
    mov ah, 09h
    int 21h
    jmp simple_continue

simple_continue:
    lea dx, cont_msg
    mov ah, 09h
    int 21h
    mov ah, 08h
    int 21h
    jmp simple_start

simple_eval endp

; ===============================================
; PARSE EXPRESSION FUNCTION
; ===============================================
parse_expression proc
    lea si, input_buffer
    mov al, [si]
    
    ; Check single digit
    cmp al, '0'
    je single_digit_zero
    cmp al, '1'
    je single_digit_one
    
    ; Check NOT operation
    cmp al, '!'
    je not_operation
    
    ; Check AND/OR operation with parentheses
    cmp al, '('
    je and_or_operation
    
    ; Invalid
    lea dx, invalid_exp
    mov ah, 09h
    int 21h
    ret

single_digit_zero:
    lea dx, result_msg
    mov ah, 09h
    int 21h
    lea dx, false_msg
    int 21h
    ret

single_digit_one:
    lea dx, result_msg
    mov ah, 09h
    int 21h
    lea dx, true_msg
    int 21h
    ret

not_operation:
    ; Check format: !1 or !0
    mov al, [si+1]
    cmp al, '1'
    je not_one_result
    cmp al, '0'
    je not_zero_result
    
    ; Invalid NOT
    lea dx, invalid_exp
    mov ah, 09h
    int 21h
    ret

not_one_result:
    lea dx, result_msg
    mov ah, 09h
    int 21h
    lea dx, false_msg
    int 21h
    ret

not_zero_result:
    lea dx, result_msg
    mov ah, 09h
    int 21h
    lea dx, true_msg
    int 21h
    ret

and_or_operation:
    ; Parse (1 & 0) or (1 | 0)
    ; Format should be: (x op y)
    ; Positions: 0='(', 1=digit1, 2=space, 3=operator, 4=space, 5=digit2, 6=')'
    
    ; Check length
    cmp cx, 7
    jl invalid_format
    
    ; Check positions
    mov al, [si+1]   ; First digit
    cmp al, '0'
    je first_is_zero
    cmp al, '1'
    je first_is_one
    jmp invalid_format

first_is_zero:
    mov bl, 0
    jmp check_operator

first_is_one:
    mov bl, 1

check_operator:
    ; Check space at position 2
    mov al, [si+2]
    cmp al, ' '
    jne invalid_format
    
    ; Check operator at position 3
    mov al, [si+3]
    cmp al, '&'
    je operator_is_and
    cmp al, '|'
    je operator_is_or
    jmp invalid_format

operator_is_and:
    mov bh, '&'
    jmp check_second_operand

operator_is_or:
    mov bh, '|'

check_second_operand:
    ; Check space at position 4
    mov al, [si+4]
    cmp al, ' '
    jne invalid_format
    
    ; Check second digit at position 5
    mov al, [si+5]
    cmp al, '0'
    je second_is_zero
    cmp al, '1'
    je second_is_one
    jmp invalid_format

second_is_zero:
    mov cl, 0
    jmp check_closing

second_is_one:
    mov cl, 1

check_closing:
    ; Check closing ) at position 6
    mov al, [si+6]
    cmp al, ')'
    jne invalid_format
    
    ; Perform calculation
    cmp bh, '&'
    je do_and_calc
    
    ; OR operation
    mov al, bl
    or al, cl
    jmp show_calc_result

do_and_calc:
    mov al, bl
    and al, cl

show_calc_result:
    lea dx, result_msg
    push ax
    mov ah, 09h
    int 21h
    pop ax
    
    cmp al, 1
    je show_true_calc
    lea dx, false_msg
    jmp display_calc_result

show_true_calc:
    lea dx, true_msg

display_calc_result:
    mov ah, 09h
    int 21h
    ret

invalid_format:
    lea dx, invalid_exp
    mov ah, 09h
    int 21h
    ret

parse_expression endp

; ===============================================
; SCENARIOS MENU
; ===============================================
scenario_menu_display proc
menu_loop:
    call clear_screen
    
    ; Display scenario menu
    lea dx, scenario_menu
    mov ah, 09h
    int 21h
    
    ; Get choice
    mov ah, 01h
    int 21h
    mov choice, al
    
    ; Process choice
    cmp al, '1'
    je run_elevator
    cmp al, '2'
    je run_bank
    cmp al, '3'
    je menu_exit
    
    ; Invalid
    jmp menu_loop

run_elevator:
    call elevator_system
    jmp menu_loop

run_bank:
    call bank_vault_system
    jmp menu_loop

menu_exit:
    ret
scenario_menu_display endp

; ===============================================
; ELEVATOR SYSTEM - PERFECT CALCULATION
; ===============================================
elevator_system proc
    call clear_screen
    
    ; Display title
    lea dx, elev_title
    mov ah, 09h
    int 21h
    
    ; Display formula
    lea dx, elev_formula
    int 21h
    
    ; Display input prompt
    lea dx, elev_inputs
    int 21h
    
    ; Get all inputs
    lea dx, eq1
    int 21h
    call get_binary_input
    mov floor, al
    
    lea dx, eq2
    mov ah, 09h
    int 21h
    call get_binary_input
    mov obst, al
    
    lea dx, eq3
    mov ah, 09h
    int 21h
    call get_binary_input
    mov button, al
    
    lea dx, eq4
    mov ah, 09h
    int 21h
    call get_binary_input
    mov timer_val, al
    
    lea dx, eq5
    mov ah, 09h
    int 21h
    call get_binary_input
    mov emergency, al
    
    ; ===== PERFORM ALL CALCULATIONS FIRST =====
    ; Step 1: NOT(Obstruction)
    mov al, obst
    not al
    and al, 1
    mov temp1, al      ; Store NOT(Obstruction)
    
    ; Step 2: Floor AND Step1
    mov al, floor
    and al, temp1
    mov temp2, al      ; Store Floor AND NOT(Obstruction)
    
    ; Step 3: Button OR Timer
    mov al, button
    or al, timer_val
    mov temp3, al      ; Store Button OR Timer
    
    ; Step 4: Step2 AND Step3
    mov al, temp2
    and al, temp3
    mov temp4, al      ; Store intermediate result
    
    ; Step 5: NOT(Emergency)
    mov al, emergency
    not al
    and al, 1
    mov temp5, al      ; Store NOT(Emergency)
    
    ; Step 6: Final result
    mov al, temp4
    and al, temp5
    mov final_result, al  ; Store final result
    
    ; ===== NOW DISPLAY ALL RESULTS =====
    lea dx, elev_calc
    mov ah, 09h
    int 21h
    
    ; Display Step 1
    lea dx, es1
    int 21h
    mov al, temp1
    call display_boolean
    
    ; Display Step 2
    lea dx, es2
    mov ah, 09h
    int 21h
    mov al, temp2
    call display_boolean
    
    ; Display Step 3
    lea dx, es3
    mov ah, 09h
    int 21h
    mov al, temp3
    call display_boolean
    
    ; Display Step 4
    lea dx, es4
    mov ah, 09h
    int 21h
    mov al, temp4
    call display_boolean
    
    ; Display Step 5
    lea dx, es5
    mov ah, 09h
    int 21h
    mov al, temp5
    call display_boolean
    
    ; Display Step 6 (Final)
    lea dx, es6
    mov ah, 09h
    int 21h
    mov al, final_result
    call display_boolean
    
    ; Display final message
    lea dx, newline
    int 21h
    lea dx, newline
    int 21h
    
    mov al, final_result
    cmp al, 1
    je door_open
    
    ; Door stays closed
    lea dx, denied_msg
    mov ah, 09h
    int 21h
    jmp elevator_done
    
door_open:
    lea dx, granted_msg
    mov ah, 09h
    int 21h
    
elevator_done:
    ; Wait for key
    lea dx, cont_msg
    mov ah, 09h
    int 21h
    mov ah, 08h
    int 21h
    
    ret
elevator_system endp

; ===============================================
; BANK VAULT SYSTEM - PERFECT CALCULATION
; ===============================================
bank_vault_system proc
    call clear_screen
    
    ; Display title
    lea dx, bank_title
    mov ah, 09h
    int 21h
    
    ; Display formula
    lea dx, bank_formula
    int 21h
    
    ; Display input prompt
    lea dx, bank_inputs
    int 21h
    
    ; Get all inputs
    lea dx, bq1
    int 21h
    call get_binary_input
    mov manager1, al
    
    lea dx, bq2
    mov ah, 09h
    int 21h
    call get_binary_input
    mov manager2, al
    
    lea dx, bq3
    mov ah, 09h
    int 21h
    call get_binary_input
    mov manager3, al
    
    lea dx, bq4
    mov ah, 09h
    int 21h
    call get_binary_input
    mov ceo, al
    
    lea dx, bq5
    mov ah, 09h
    int 21h
    call get_binary_input
    mov alert, al
    
    lea dx, bq6
    mov ah, 09h
    int 21h
    call get_binary_input
    mov normal_hrs, al
    
    lea dx, bq7
    mov ah, 09h
    int 21h
    call get_binary_input
    mov phys_key, al
    
    lea dx, bq8
    mov ah, 09h
    int 21h
    call get_binary_input
    mov emerg_hrs, al
    
    lea dx, bq9
    mov ah, 09h
    int 21h
    call get_binary_input
    mov biometric, al
    
    ; ===== PERFORM ALL CALCULATIONS FIRST =====
    ; Step 1: M1 AND M2
    mov al, manager1
    and al, manager2
    mov temp1, al      ; Store M1&M2
    
    ; Step 2: M1 AND M3
    mov al, manager1
    and al, manager3
    mov temp2, al      ; Store M1&M3
    
    ; Step 3: M2 AND M3
    mov al, manager2
    and al, manager3
    mov temp3, al      ; Store M2&M3
    
    ; Step 4: Manager Vote = (M1&M2) OR (M1&M3) OR (M2&M3)
    mov al, temp1
    or al, temp2
    or al, temp3
    mov temp4, al      ; Store ManagerVote
    
    ; Step 5: NOT(Alert)
    mov al, alert
    not al
    and al, 1
    mov bl, al         ; Store NOT(Alert) in BL
    
    ; Step 6: CEO AND NOT(Alert)
    mov al, ceo
    and al, bl
    mov bh, al         ; Store CEO part in BH
    
    ; Step 7: Part1 = ManagerVote OR CEO part
    mov al, temp4
    or al, bh
    mov temp5, al      ; Store Part1
    
    ; Step 8: Normal = NormalHours AND PhysicalKey
    mov al, normal_hrs
    and al, phys_key
    mov cl, al         ; Store Normal in CL
    
    ; Step 9: Emergency = EmergencyHours AND Biometric
    mov al, emerg_hrs
    and al, biometric
    mov ch, al         ; Store Emergency in CH
    
    ; Step 10: Normal XOR Emergency
    mov al, cl
    xor al, ch
    mov dl, al         ; Store XOR result in DL
    
    ; Step 11: Final = Part1 AND XOR result
    mov al, temp5
    and al, dl
    mov final_result, al  ; Store final result
    
    ; Save CL, CH, DL for display
    mov temp1, cl      ; Reuse temp1 for Normal
    mov temp2, ch      ; Reuse temp2 for Emergency
    mov temp3, dl      ; Reuse temp3 for XOR result
    
    ; ===== NOW DISPLAY ALL RESULTS =====
    lea dx, bank_calc
    mov ah, 09h
    int 21h
    
    ; Display Step 1
    lea dx, bs1
    int 21h
    mov al, manager1
    and al, manager2
    call display_boolean
    
    ; Display Step 2
    lea dx, bs2
    mov ah, 09h
    int 21h
    mov al, manager1
    and al, manager3
    call display_boolean
    
    ; Display Step 3
    lea dx, bs3
    mov ah, 09h
    int 21h
    mov al, manager2
    and al, manager3
    call display_boolean
    
    ; Display Step 4
    lea dx, bs4
    mov ah, 09h
    int 21h
    mov al, temp4
    call display_boolean
    
    ; Display Step 5
    lea dx, bs5
    mov ah, 09h
    int 21h
    mov al, alert
    not al
    and al, 1
    call display_boolean
    
    ; Display Step 6
    lea dx, bs6
    mov ah, 09h
    int 21h
    mov al, ceo
    and al, bl
    call display_boolean
    
    ; Display Step 7
    lea dx, bs7
    mov ah, 09h
    int 21h
    mov al, temp5
    call display_boolean
    
    ; Display Step 8
    lea dx, bs8
    mov ah, 09h
    int 21h
    mov al, temp1      ; Normal
    call display_boolean
    
    ; Display Step 9
    lea dx, bs9
    mov ah, 09h
    int 21h
    mov al, temp2      ; Emergency
    call display_boolean
    
    ; Display Step 10
    lea dx, bs10
    mov ah, 09h
    int 21h
    mov al, temp3      ; XOR result
    call display_boolean
    
    ; Display Step 11 (Final)
    lea dx, bs11
    mov ah, 09h
    int 21h
    mov al, final_result
    call display_boolean
    
    ; Display final message
    lea dx, newline
    int 21h
    lea dx, newline
    int 21h
    
    mov al, final_result
    cmp al, 1
    je vault_open
    
    ; Access denied
    lea dx, denied_msg
    mov ah, 09h
    int 21h
    jmp bank_done
    
vault_open:
    lea dx, granted_msg
    mov ah, 09h
    int 21h
    
bank_done:
    ; Wait for key
    lea dx, cont_msg
    mov ah, 09h
    int 21h
    mov ah, 08h
    int 21h
    
    ret
bank_vault_system endp

; ===============================================
; UTILITY FUNCTIONS
; ===============================================

; Get binary input (0 or 1)
get_binary_input proc
get_input:
    mov ah, 01h
    int 21h
    
    ; Validate input
    cmp al, '0'
    je valid_input
    cmp al, '1'
    je valid_input
    
    ; Invalid input - show error and try again
    push ax
    lea dx, invalid_msg
    mov ah, 09h
    int 21h
    
    ; Move cursor back
    mov ah, 02h
    mov dl, 8        ; Backspace
    int 21h
    mov dl, ' '      ; Space to clear
    int 21h
    mov dl, 8        ; Backspace again
    int 21h
    
    pop ax
    jmp get_input
    
valid_input:
    sub al, '0'      ; Convert ASCII to binary
    ret
get_binary_input endp

; Display boolean value (0 or 1)
display_boolean proc
    push ax
    cmp al, 1
    je show_true_value
    
    ; Show false
    lea dx, false_msg
    jmp display_value
    
show_true_value:
    lea dx, true_msg
    
display_value:
    mov ah, 09h
    int 21h
    pop ax
    ret
display_boolean endp

; Clear screen
clear_screen proc
    mov ax, 0003h    ; 80x25 text mode
    int 10h
    ret
clear_screen endp

end main