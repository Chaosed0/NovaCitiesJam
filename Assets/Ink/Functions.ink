
VAR debug=true
VAR finished_intro=false
VAR next_visit=->Faisal

VAR Faisal_Count=1
VAR Yousef_Count=1
VAR LiYan_Count=1


VAR LiYan_Guess_1="none"
VAR LiYan_Translate=true

EXTERNAL shuffle_next_choices()
=== function shuffle_next_choices() ===
    < DEBUG > NEXT CHOICES SHOULD BE SHUFFLED
        
EXTERNAL quit_game()
=== function quit_game() ===
    < DEBUG > GAME SHOULD QUIT