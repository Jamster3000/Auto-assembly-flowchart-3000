section .data    ; Data section - contains all game text and constant values for the adventure game
    ; Room descriptions and basic prompts
    prompt db "You are in a dark room. There is a door to the north and a key on the floor.", 0xA
    prompt_len equ $ - prompt
    input_msg db "What do you want to do? (Type 'help' for available commands)", 0xA
    input_msg_len equ $ - input_msg
    output_msg db "You picked up the key.", 0xA
    output_msg_len equ $ - output_msg
    output_msg2 db "You opened the door and escaped!", 0xA
    output_msg2_len equ $ - output_msg2
    output_msg3 db "You can't do that. Try something else or type 'help' for available commands.", 0xA
    output_msg3_len equ $ - output_msg3
    output_msg4 db "You are in a bright room. There is a treasure chest in the corner.", 0xA
    output_msg4_len equ $ - output_msg4
    output_msg5 db "You opened the treasure chest and found a pile of gold!", 0xA
    output_msg5_len equ $ - output_msg5
    output_msg6 db "You are in a forest. There is a path to the east and a cave to the west.", 0xA
    output_msg6_len equ $ - output_msg6
    output_msg7 db "You entered the cave and found a sleeping dragon!", 0xA
    output_msg7_len equ $ - output_msg7
    output_msg8 db "You are in a castle. There is a throne in the center and a sword on the wall.", 0xA
    output_msg8_len equ $ - output_msg8
    output_msg9 db "You took the sword from the wall.", 0xA
    output_msg9_len equ $ - output_msg9
    output_msg10 db "You are in a dungeon. There is a prisoner in the corner.", 0xA
    output_msg10_len equ $ - output_msg10
    output_msg11 db "You freed the prisoner and gained a new ally!", 0xA
    output_msg11_len equ $ - output_msg11
    output_msg12 db "You are in a mountain cave. There is a riddle carved on the wall.", 0xA
    output_msg12_len equ $ - output_msg12
    output_msg13 db "You solved the riddle! A hidden passage opens, revealing a magical gem.", 0xA
    output_msg13_len equ $ - output_msg13
    output_msg14 db "You picked up the magical gem. It glows with arcane energy.", 0xA
    output_msg14_len equ $ - output_msg14
    output_msg15 db "You are in an ancient library. Dusty tomes line the shelves.", 0xA
    output_msg15_len equ $ - output_msg15
    output_msg16 db "You found a magical book! Reading it gives you insight into dragon weaknesses.", 0xA
    output_msg16_len equ $ - output_msg16
    output_msg17 db "You defeated the dragon using your sword and knowledge from the book!", 0xA
    output_msg17_len equ $ - output_msg17
    output_msg18 db "You are in a beautiful garden. Colorful flowers bloom everywhere.", 0xA
    output_msg18_len equ $ - output_msg18
    output_msg19 db "You picked some magical flowers. They might be useful for brewing potions.", 0xA
    output_msg19_len equ $ - output_msg19
    output_msg20 db "You found an old map hidden under a rock. It reveals secret locations.", 0xA
    output_msg20_len equ $ - output_msg20
    output_msg21 db "You brewed a magical potion using the flowers from the garden!", 0xA
    output_msg21_len equ $ - output_msg21
    output_msg22 db "You completed your adventure! With the treasure, dragon defeated, and new allies, you return home victorious!", 0xA
    output_msg22_len equ $ - output_msg22
    
    ; Enhanced help messages and available actions
    help_msg db "Available commands:", 0xA
             db "- 'pick up key': Pick up the key on the floor", 0xA
             db "- 'open door': Open the door if you have the key", 0xA
             db "- 'open chest': Open the treasure chest in the bright room", 0xA
             db "- 'go east': Go east in the forest", 0xA
             db "- 'go west': Go west in the forest", 0xA
             db "- 'go castle': Go to the castle", 0xA
             db "- 'take sword': Take the sword in the castle", 0xA
             db "- 'go dungeon': Go to the dungeon", 0xA
             db "- 'free prisoner': Free the prisoner in the dungeon", 0xA
             db "- 'go mountain': Go to the mountain cave", 0xA
             db "- 'solve riddle': Solve the riddle in the mountain cave", 0xA
             db "- 'take gem': Take the magical gem", 0xA
             db "- 'go library': Go to the ancient library", 0xA
             db "- 'read book': Read the magical book in the library", 0xA
             db "- 'fight dragon': Fight the dragon (needs sword and book knowledge)", 0xA
             db "- 'go garden': Go to the beautiful garden", 0xA
             db "- 'pick flowers': Pick magical flowers in the garden", 0xA
             db "- 'find map': Look for a hidden map", 0xA
             db "- 'brew potion': Make a magical potion (needs flowers)", 0xA
             db "- 'inventory': Check what items you are carrying", 0xA
             db "- 'quit': Exit the game", 0xA
    help_msg_len equ $ - help_msg
    
    ; Inventory messages
    inventory_msg db "You are carrying:", 0xA
    inventory_msg_len equ $ - inventory_msg
    inventory_key db "- A small brass key", 0xA
    inventory_key_len equ $ - inventory_key
    inventory_sword db "- A sharp sword", 0xA
    inventory_sword_len equ $ - inventory_sword
    inventory_empty db "Nothing", 0xA
    inventory_empty_len equ $ - inventory_empty
    inventory_gem db "- A glowing magical gem", 0xA
    inventory_gem_len equ $ - inventory_gem
    inventory_book db "- A ancient magical book", 0xA
    inventory_book_len equ $ - inventory_book
    inventory_map db "- A weathered treasure map", 0xA
    inventory_map_len equ $ - inventory_map
    inventory_potion db "- A bubbling magical potion", 0xA
    inventory_potion_len equ $ - inventory_potion
    inventory_flowers db "- Some magical flowers", 0xA
    inventory_flowers_len equ $ - inventory_flowers
    
    ; Quit and victory messages
    quit_msg db "Thanks for playing! Goodbye.", 0xA
    quit_msg_len equ $ - quit_msg
    victory_msg db "Congratulations! You have completed the adventure!", 0xA
    victory_msg_len equ $ - victory_msg
    
    input_buffer times 100 db 0

section .bss    ; BSS section - contains uninitialized variables for game state tracking
    has_key resb 1           ; Flag to track if player has the key
    in_bright_room resb 1    ; Flag for bright room location
    in_forest resb 1         ; Flag for forest location
    in_castle resb 1         ; Flag for castle location
    in_dungeon resb 1        ; Flag for dungeon location
    in_mountain resb 1       ; Flag for mountain location
    in_library resb 1        ; Flag for library location
    in_garden resb 1         ; Flag for garden location
    has_sword resb 1         ; Flag for sword item
    has_map resb 1           ; Flag for map item
    has_potion resb 1        ; Flag for potion item
    has_gem resb 1           ; Flag for gem item
    prisoner_freed resb 1    ; Flag for freed prisoner event
    dragon_defeated resb 1   ; Flag for defeated dragon event
    book_read resb 1         ; Flag for reading magic book event
    flowers_picked resb 1    ; Flag for picking magical flowers event
    riddle_solved resb 1     ; Flag for solving the mountain riddle

section .text    ; Text section - contains all executable code
    global _start           ; Entry point for the linker

_start:                     ; Program entry point - initializes game state and starts main game loop
    ; Initialize the game state
    mov byte [has_key], 0
    mov byte [in_bright_room], 0
    mov byte [in_forest], 0
    mov byte [in_castle], 0
    mov byte [in_dungeon], 0
    mov byte [in_mountain], 0
    mov byte [in_library], 0
    mov byte [in_garden], 0
    mov byte [has_sword], 0
    mov byte [has_map], 0
    mov byte [has_potion], 0
    mov byte [has_gem], 0
    mov byte [prisoner_freed], 0
    mov byte [dragon_defeated], 0
    mov byte [book_read], 0
    mov byte [flowers_picked], 0
    mov byte [riddle_solved], 0

    ; Print the initial prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, prompt_len
    int 0x80

game_loop:                ; Main game loop - handles player input and processes commands
    ; Print the input prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, input_msg_len
    int 0x80

    ; Read user input
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Compare the input to "pick up key" - Handler for picking up the key
    mov eax, input_buffer
    cmp byte [eax], 'p'
    jne check_open_door
    cmp byte [eax+1], 'i'
    jne check_open_door
    cmp byte [eax+2], 'c'
    jne check_open_door
    cmp byte [eax+3], 'k'
    jne check_open_door
    cmp byte [eax+4], ' '
    jne check_open_door
    cmp byte [eax+5], 'u'
    jne check_open_door
    cmp byte [eax+6], 'p'
    jne check_open_door
    cmp byte [eax+7], ' '
    jne check_open_door
    cmp byte [eax+8], 'k'
    jne check_open_door
    cmp byte [eax+9], 'e'
    jne check_open_door
    cmp byte [eax+10], 'y'
    jne check_open_door

    ; If the input is "pick up key", set has_key to 1
    mov byte [has_key], 1

    ; Print the output message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, output_msg_len
    int 0x80

    jmp game_loop

check_open_door:          ; Handler for opening the door with the key
    ; Compare the input to "open door"
    mov eax, input_buffer
    cmp byte [eax], 'o'
    jne check_open_chest
    cmp byte [eax+1], 'p'
    jne check_open_chest
    cmp byte [eax+2], 'e'
    jne check_open_chest
    cmp byte [eax+3], 'n'
    jne check_open_chest
    cmp byte [eax+4], ' '
    jne check_open_chest
    cmp byte [eax+5], 'd'
    jne check_open_chest
    cmp byte [eax+6], 'o'
    jne check_open_chest
    cmp byte [eax+7], 'o'
    jne check_open_chest
    cmp byte [eax+8], 'r'
    jne check_open_chest

    ; If the input is "open door" and has_key is 1, print the output message and exit
    cmp byte [has_key], 1
    jne game_loop

    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg2
    mov edx, output_msg2_len
    int 0x80

    ; Set in_bright_room to 1
    mov byte [in_bright_room], 1

    ; Print the bright room prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg4
    mov edx, output_msg4_len
    int 0x80

    jmp game_loop

check_open_chest:         ; Handler for opening the treasure chest in bright room
    ; Compare the input to "open chest"
    mov eax, input_buffer
    cmp byte [eax], 'o'
    jne check_go_east
    cmp byte [eax+1], 'p'
    jne check_go_east
    cmp byte [eax+2], 'e'
    jne check_go_east
    cmp byte [eax+3], 'n'
    jne check_go_east
    cmp byte [eax+4], ' '
    jne check_go_east
    cmp byte [eax+5], 'c'
    jne check_go_east
    cmp byte [eax+6], 'h'
    jne check_go_east
    cmp byte [eax+7], 'e'
    jne check_go_east
    cmp byte [eax+8], 's'
    jne check_go_east
    cmp byte [eax+9], 't'
    jne check_go_east

    ; If the input is "open chest" and in_bright_room is 1, print the output message and exit
    cmp byte [in_bright_room], 1
    jne game_loop

    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg5
    mov edx, output_msg5_len
    int 0x80

    ; Exit the game
    mov eax, 1
    xor ebx, ebx
    int 0x80

check_go_east:            ; Handler for going east in the forest
    ; Compare the input to "go east"
    mov eax, input_buffer
    cmp byte [eax], 'g'
    jne check_go_west
    cmp byte [eax+1], 'o'
    jne check_go_west
    cmp byte [eax+2], ' '
    jne check_go_west
    cmp byte [eax+3], 'e'
    jne check_go_west
    cmp byte [eax+4], 'a'
    jne check_go_west
    cmp byte [eax+5], 's'
    jne check_go_west
    cmp byte [eax+6], 't'
    jne check_go_west

    ; If the input is "go east", set in_forest to 1
    mov byte [in_forest], 1

    ; Print the forest prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg6
    mov edx, output_msg6_len
    int 0x80

    jmp game_loop

check_go_west:            ; Handler for going west in the forest to the dragon cave
    ; Compare the input to "go west"
    mov eax, input_buffer
    cmp byte [eax], 'g'
    jne check_go_castle
    cmp byte [eax+1], 'o'
    jne check_go_castle
    cmp byte [eax+2], ' '
    jne check_go_castle
    cmp byte [eax+3], 'w'
    jne check_go_castle
    cmp byte [eax+4], 'e'
    jne check_go_castle
    cmp byte [eax+5], 's'
    jne check_go_castle
    cmp byte [eax+6], 't'
    jne check_go_castle

    ; If the input is "go west" and in_forest is 1, print the output message
    cmp byte [in_forest], 1
    jne game_loop

    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg7
    mov edx, output_msg7_len
    int 0x80

    jmp game_loop

check_go_castle:          ; Handler for going to the castle location
    ; Compare the input to "go castle"
    mov eax, input_buffer
    cmp byte [eax], 'g'
    jne check_take_sword
    cmp byte [eax+1], 'o'
    jne check_take_sword
    cmp byte [eax+2], ' '
    jne check_take_sword
    cmp byte [eax+3], 'c'
    jne check_take_sword
    cmp byte [eax+4], 'a'
    jne check_take_sword
    cmp byte [eax+5], 's'
    jne check_take_sword
    cmp byte [eax+6], 't'
    jne check_take_sword
    cmp byte [eax+7], 'l'
    jne check_take_sword
    cmp byte [eax+8], 'e'
    jne check_take_sword

    ; If the input is "go castle", set in_castle to 1
    mov byte [in_castle], 1

    ; Print the castle prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg8
    mov edx, output_msg8_len
    int 0x80

    jmp game_loop

check_take_sword:         ; Handler for taking the sword in the castle
    ; Compare the input to "take sword"
    mov eax, input_buffer
    cmp byte [eax], 't'
    jne check_go_dungeon
    cmp byte [eax+1], 'a'
    jne check_go_dungeon
    cmp byte [eax+2], 'k'
    jne check_go_dungeon
    cmp byte [eax+3], 'e'
    jne check_go_dungeon
    cmp byte [eax+4], ' '
    jne check_go_dungeon
    cmp byte [eax+5], 's'
    jne check_go_dungeon
    cmp byte [eax+6], 'w'
    jne check_go_dungeon
    cmp byte [eax+7], 'o'
    jne check_go_dungeon
    cmp byte [eax+8], 'r'
    jne check_go_dungeon
    cmp byte [eax+9], 'd'
    jne check_go_dungeon

    ; If the input is "take sword" and in_castle is 1, set has_sword to 1
    cmp byte [in_castle], 1
    jne game_loop

    mov byte [has_sword], 1

    ; Print the output message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg9
    mov edx, output_msg9_len
    int 0x80

    jmp game_loop

check_go_dungeon:         ; Handler for going to the dungeon location
    ; Compare the input to "go dungeon"
    mov eax, input_buffer
    cmp byte [eax], 'g'
    jne check_free_prisoner
    cmp byte [eax+1], 'o'
    jne check_free_prisoner
    cmp byte [eax+2], ' '
    jne check_free_prisoner
    cmp byte [eax+3], 'd'
    jne check_free_prisoner
    cmp byte [eax+4], 'u'
    jne check_free_prisoner
    cmp byte [eax+5], 'n'
    jne check_free_prisoner
    cmp byte [eax+6], 'g'
    jne check_free_prisoner
    cmp byte [eax+7], 'e'
    jne check_free_prisoner
    cmp byte [eax+8], 'o'
    jne check_free_prisoner
    cmp byte [eax+9], 'n'
    jne check_free_prisoner

    ; If the input is "go dungeon", set in_dungeon to 1
    mov byte [in_dungeon], 1

    ; Print the dungeon prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg10
    mov edx, output_msg10_len
    int 0x80

    jmp game_loop

check_free_prisoner:
    ; Compare the input to "free prisoner"
    mov eax, input_buffer
    cmp byte [eax], 'f'
    jne check_go_mountain
    cmp byte [eax+1], 'r'
    jne check_go_mountain
    cmp byte [eax+2], 'e'
    jne check_go_mountain
    cmp byte [eax+3], 'e'
    jne check_go_mountain
    cmp byte [eax+4], ' '
    jne check_go_mountain
    cmp byte [eax+5], 'p'
    jne check_go_mountain
    cmp byte [eax+6], 'r'
    jne check_go_mountain
    cmp byte [eax+7], 'i'
    jne check_go_mountain
    cmp byte [eax+8], 's'
    jne check_go_mountain
    cmp byte [eax+9], 'o'
    jne check_go_mountain
    cmp byte [eax+10], 'n'
    jne check_go_mountain
    cmp byte [eax+11], 'e'
    jne check_go_mountain
    cmp byte [eax+12], 'r'
    jne check_go_mountain

    ; If the input is "free prisoner" and in_dungeon is 1, set prisoner_freed to 1
    cmp byte [in_dungeon], 1
    jne game_loop

    mov byte [prisoner_freed], 1

    ; Print the output message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg11
    mov edx, output_msg11_len
    int 0x80

    jmp game_loop

check_go_mountain:         ; Handler for going to mountain cave location
    ; Compare the input to "go mountain"
    mov eax, input_buffer
    cmp byte [eax], 'g'
    jne check_solve_riddle
    cmp byte [eax+1], 'o'
    jne check_solve_riddle
    cmp byte [eax+2], ' '
    jne check_solve_riddle
    cmp byte [eax+3], 'm'
    jne check_solve_riddle
    cmp byte [eax+4], 'o'
    jne check_solve_riddle
    cmp byte [eax+5], 'u'
    jne check_solve_riddle
    cmp byte [eax+6], 'n'
    jne check_solve_riddle
    cmp byte [eax+7], 't'
    jne check_solve_riddle
    cmp byte [eax+8], 'a'
    jne check_solve_riddle
    cmp byte [eax+9], 'i'
    jne check_solve_riddle
    cmp byte [eax+10], 'n'
    jne check_solve_riddle

    ; If the input is "go mountain", set in_mountain to 1
    mov byte [in_mountain], 1

    ; Print the mountain cave prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg12
    mov edx, output_msg12_len
    int 0x80

    jmp game_loop

check_solve_riddle:        ; Handler for solving the riddle in mountain cave
    ; Compare the input to "solve riddle"
    mov eax, input_buffer
    cmp byte [eax], 's'
    jne check_take_gem
    cmp byte [eax+1], 'o'
    jne check_take_gem
    cmp byte [eax+2], 'l'
    jne check_take_gem
    cmp byte [eax+3], 'v'
    jne check_take_gem
    cmp byte [eax+4], 'e'
    jne check_take_gem
    cmp byte [eax+5], ' '
    jne check_take_gem
    cmp byte [eax+6], 'r'
    jne check_take_gem
    cmp byte [eax+7], 'i'
    jne check_take_gem
    cmp byte [eax+8], 'd'
    jne check_take_gem
    cmp byte [eax+9], 'd'
    jne check_take_gem
    cmp byte [eax+10], 'l'
    jne check_take_gem
    cmp byte [eax+11], 'e'
    jne check_take_gem

    ; If the input is "solve riddle" and in_mountain is 1, set riddle_solved to 1
    cmp byte [in_mountain], 1
    jne game_loop

    mov byte [riddle_solved], 1

    ; Print the riddle solved message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg13
    mov edx, output_msg13_len
    int 0x80

    jmp game_loop

check_take_gem:            ; Handler for taking the magical gem
    ; Compare the input to "take gem"
    mov eax, input_buffer
    cmp byte [eax], 't'
    jne check_go_library
    cmp byte [eax+1], 'a'
    jne check_go_library
    cmp byte [eax+2], 'k'
    jne check_go_library
    cmp byte [eax+3], 'e'
    jne check_go_library
    cmp byte [eax+4], ' '
    jne check_go_library
    cmp byte [eax+5], 'g'
    jne check_go_library
    cmp byte [eax+6], 'e'
    jne check_go_library
    cmp byte [eax+7], 'm'
    jne check_go_library

    ; If the input is "take gem" and riddle_solved is 1, set has_gem to 1
    cmp byte [riddle_solved], 1
    jne game_loop

    mov byte [has_gem], 1

    ; Print the take gem message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg14
    mov edx, output_msg14_len
    int 0x80

    jmp game_loop

check_go_library:          ; Handler for going to the library location
    ; Compare the input to "go library"
    mov eax, input_buffer
    cmp byte [eax], 'g'
    jne check_read_book
    cmp byte [eax+1], 'o'
    jne check_read_book
    cmp byte [eax+2], ' '
    jne check_read_book
    cmp byte [eax+3], 'l'
    jne check_read_book
    cmp byte [eax+4], 'i'
    jne check_read_book
    cmp byte [eax+5], 'b'
    jne check_read_book
    cmp byte [eax+6], 'r'
    jne check_read_book
    cmp byte [eax+7], 'a'
    jne check_read_book
    cmp byte [eax+8], 'r'
    jne check_read_book
    cmp byte [eax+9], 'y'
    jne check_read_book

    ; If the input is "go library", set in_library to 1
    mov byte [in_library], 1

    ; Print the library prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg15
    mov edx, output_msg15_len
    int 0x80

    jmp game_loop

check_read_book:           ; Handler for reading the magical book in library
    ; Compare the input to "read book"
    mov eax, input_buffer
    cmp byte [eax], 'r'
    jne check_fight_dragon
    cmp byte [eax+1], 'e'
    jne check_fight_dragon
    cmp byte [eax+2], 'a'
    jne check_fight_dragon
    cmp byte [eax+3], 'd'
    jne check_fight_dragon
    cmp byte [eax+4], ' '
    jne check_fight_dragon
    cmp byte [eax+5], 'b'
    jne check_fight_dragon
    cmp byte [eax+6], 'o'
    jne check_fight_dragon
    cmp byte [eax+7], 'o'
    jne check_fight_dragon
    cmp byte [eax+8], 'k'
    jne check_fight_dragon

    ; If the input is "read book" and in_library is 1, set book_read to 1
    cmp byte [in_library], 1
    jne game_loop

    mov byte [book_read], 1

    ; Print the read book message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg16
    mov edx, output_msg16_len
    int 0x80

    jmp game_loop

check_fight_dragon:        ; Handler for fighting the dragon with sword and book knowledge
    ; Compare the input to "fight dragon"
    mov eax, input_buffer
    cmp byte [eax], 'f'
    jne check_go_garden
    cmp byte [eax+1], 'i'
    jne check_go_garden
    cmp byte [eax+2], 'g'
    jne check_go_garden
    cmp byte [eax+3], 'h'
    jne check_go_garden
    cmp byte [eax+4], 't'
    jne check_go_garden
    cmp byte [eax+5], ' '
    jne check_go_garden
    cmp byte [eax+6], 'd'
    jne check_go_garden
    cmp byte [eax+7], 'r'
    jne check_go_garden
    cmp byte [eax+8], 'a'
    jne check_go_garden
    cmp byte [eax+9], 'g'
    jne check_go_garden
    cmp byte [eax+10], 'o'
    jne check_go_garden
    cmp byte [eax+11], 'n'
    jne check_go_garden

    ; If the input is "fight dragon" and player has sword and book knowledge
    cmp byte [has_sword], 1
    jne game_loop
    cmp byte [book_read], 1
    jne game_loop

    mov byte [dragon_defeated], 1

    ; Print the dragon defeated message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg17
    mov edx, output_msg17_len
    int 0x80

    jmp game_loop

check_go_garden:           ; Handler for going to the garden location
    ; Compare the input to "go garden"
    mov eax, input_buffer
    cmp byte [eax], 'g'
    jne check_pick_flowers
    cmp byte [eax+1], 'o'
    jne check_pick_flowers
    cmp byte [eax+2], ' '
    jne check_pick_flowers
    cmp byte [eax+3], 'g'
    jne check_pick_flowers
    cmp byte [eax+4], 'a'
    jne check_pick_flowers
    cmp byte [eax+5], 'r'
    jne check_pick_flowers
    cmp byte [eax+6], 'd'
    jne check_pick_flowers
    cmp byte [eax+7], 'e'
    jne check_pick_flowers
    cmp byte [eax+8], 'n'
    jne check_pick_flowers

    ; If the input is "go garden", set in_garden to 1
    mov byte [in_garden], 1

    ; Print the garden prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg18
    mov edx, output_msg18_len
    int 0x80

    jmp game_loop

check_pick_flowers:        ; Handler for picking magical flowers in garden
    ; Compare the input to "pick flowers"
    mov eax, input_buffer
    cmp byte [eax], 'p'
    jne check_find_map
    cmp byte [eax+1], 'i'
    jne check_find_map
    cmp byte [eax+2], 'c'
    jne check_find_map
    cmp byte [eax+3], 'k'
    jne check_find_map
    cmp byte [eax+4], ' '
    jne check_find_map
    cmp byte [eax+5], 'f'
    jne check_find_map
    cmp byte [eax+6], 'l'
    jne check_find_map
    cmp byte [eax+7], 'o'
    jne check_find_map
    cmp byte [eax+8], 'w'
    jne check_find_map
    cmp byte [eax+9], 'e'
    jne check_find_map
    cmp byte [eax+10], 'r'
    jne check_find_map
    cmp byte [eax+11], 's'
    jne check_find_map

    ; If the input is "pick flowers" and in_garden is 1, set flowers_picked to 1
    cmp byte [in_garden], 1
    jne game_loop

    mov byte [flowers_picked], 1

    ; Print the pick flowers message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg19
    mov edx, output_msg19_len
    int 0x80

    jmp game_loop

check_find_map:            ; Handler for finding the hidden map
    ; Compare the input to "find map"
    mov eax, input_buffer
    cmp byte [eax], 'f'
    jne check_brew_potion
    cmp byte [eax+1], 'i'
    jne check_brew_potion
    cmp byte [eax+2], 'n'
    jne check_brew_potion
    cmp byte [eax+3], 'd'
    jne check_brew_potion
    cmp byte [eax+4], ' '
    jne check_brew_potion
    cmp byte [eax+5], 'm'
    jne check_brew_potion
    cmp byte [eax+6], 'a'
    jne check_brew_potion
    cmp byte [eax+7], 'p'
    jne check_brew_potion

    ; If the input is "find map", set has_map to 1
    mov byte [has_map], 1

    ; Print the found map message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg20
    mov edx, output_msg20_len
    int 0x80

    jmp game_loop

check_brew_potion:         ; Handler for brewing magical potion with flowers
    ; Compare the input to "brew potion"
    mov eax, input_buffer
    cmp byte [eax], 'b'
    jne check_quit
    cmp byte [eax+1], 'r'
    jne check_quit
    cmp byte [eax+2], 'e'
    jne check_quit
    cmp byte [eax+3], 'w'
    jne check_quit
    cmp byte [eax+4], ' '
    jne check_quit
    cmp byte [eax+5], 'p'
    jne check_quit
    cmp byte [eax+6], 'o'
    jne check_quit
    cmp byte [eax+7], 't'
    jne check_quit
    cmp byte [eax+8], 'i'
    jne check_quit
    cmp byte [eax+9], 'o'
    jne check_quit
    cmp byte [eax+10], 'n'
    jne check_quit

    ; If the input is "brew potion" and player has picked flowers, set has_potion to 1
    cmp byte [flowers_picked], 1
    jne game_loop

    mov byte [has_potion], 1

    ; Print the brew potion message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg21
    mov edx, output_msg21_len
    int 0x80

    jmp game_loop

check_quit:                ; Handler for quitting the game
    ; Compare the input to "quit"
    mov eax, input_buffer
    cmp byte [eax], 'q'
    jne check_help
    cmp byte [eax+1], 'u'
    jne check_help
    cmp byte [eax+2], 'i'
    jne check_help
    cmp byte [eax+3], 't'
    jne check_help

    ; Print the quit message
    mov eax, 4
    mov ebx, 1
    mov ecx, quit_msg
    mov edx, quit_msg_len
    int 0x80

    ; Exit the game
    mov eax, 1
    xor ebx, ebx
    int 0x80
    
check_help:               ; Handler for displaying help and commands to the player
    ; Compare the input to "help"
    mov eax, input_buffer
    cmp byte [eax], 'h'
    jne check_inventory
    cmp byte [eax+1], 'e'
    jne check_inventory
    cmp byte [eax+2], 'l'
    jne check_inventory
    cmp byte [eax+3], 'p'
    jne check_inventory

    ; Print help message
    mov eax, 4
    mov ebx, 1
    mov ecx, help_msg
    mov edx, help_msg_len
    int 0x80

    jmp game_loop

check_inventory:          ; Handler for checking the player's inventory
    ; Compare the input to "inventory"
    mov eax, input_buffer
    cmp byte [eax], 'i'
    jne check_victory
    cmp byte [eax+1], 'n'
    jne check_victory
    cmp byte [eax+2], 'v'
    jne check_victory
    cmp byte [eax+3], 'e'
    jne check_victory
    cmp byte [eax+4], 'n'
    jne check_victory
    cmp byte [eax+5], 't'
    jne check_victory
    cmp byte [eax+6], 'o'
    jne check_victory
    cmp byte [eax+7], 'r'
    jne check_victory
    cmp byte [eax+8], 'y'
    jne check_victory

    ; Print inventory header
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_msg
    mov edx, inventory_msg_len
    int 0x80

    ; Check if player has key
    cmp byte [has_key], 1
    jne check_has_sword
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_key
    mov edx, inventory_key_len
    int 0x80

check_has_sword:          ; Check if sword is in inventory and display it
    ; Check if player has sword
    cmp byte [has_sword], 1
    jne check_has_gem
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_sword
    mov edx, inventory_sword_len
    int 0x80
    
check_has_gem:             ; Check if magical gem is in inventory and display it
    ; Check if player has the gem
    cmp byte [has_gem], 1
    jne check_has_book
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_gem
    mov edx, inventory_gem_len
    int 0x80

check_has_book:            ; Check if magical book is in inventory and display it
    ; Check if player has the book
    cmp byte [book_read], 1
    jne check_has_map
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_book
    mov edx, inventory_book_len
    int 0x80

check_has_map:             ; Check if map is in inventory and display it
    ; Check if player has the map
    cmp byte [has_map], 1
    jne check_has_flowers
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_map
    mov edx, inventory_map_len
    int 0x80

check_has_flowers:         ; Check if flowers are in inventory and display them
    ; Check if player has flowers
    cmp byte [flowers_picked], 1
    jne check_has_potion
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_flowers
    mov edx, inventory_flowers_len
    int 0x80

check_has_potion:          ; Check if potion is in inventory and display it
    ; Check if player has potion
    cmp byte [has_potion], 1
    jne check_empty_inventory
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_potion
    mov edx, inventory_potion_len
    int 0x80
    
    jmp game_loop

check_empty_inventory:     ; Check if inventory is empty and display appropriate message
    ; Check if inventory is empty
    cmp byte [has_key], 1
    je game_loop
    cmp byte [has_sword], 1
    je game_loop
    cmp byte [has_gem], 1
    je game_loop
    cmp byte [book_read], 1
    je game_loop
    cmp byte [has_map], 1
    je game_loop
    cmp byte [flowers_picked], 1
    je game_loop
    cmp byte [has_potion], 1
    je game_loop
    
    mov eax, 4
    mov ebx, 1
    mov ecx, inventory_empty
    mov edx, inventory_empty_len
    int 0x80
    
    jmp game_loop

check_victory:            ; Handler for checking victory conditions and ending the game
    ; Check for victory conditions - defeat dragon, free prisoner and get treasure
    cmp byte [dragon_defeated], 1
    jne unknown_command
    cmp byte [prisoner_freed], 1
    jne unknown_command
    cmp byte [in_bright_room], 1
    jne unknown_command

    ; Print the victory message
    mov eax, 4
    mov ebx, 1
    mov ecx, victory_msg
    mov edx, victory_msg_len
    int 0x80
    
    ; Print the completion message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg22
    mov edx, output_msg22_len
    int 0x80

    ; Exit the game with success
    mov eax, 1
    xor ebx, ebx
    int 0x80

unknown_command:          ; Handler for unrecognized commands - displays help message
    ; Print the "you can't do that" message
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg3
    mov edx, output_msg3_len
    int 0x80

    jmp game_loop
