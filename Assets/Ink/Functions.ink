
VAR debug=true
VAR finished_intro=false
VAR next_visit=->Intro

VAR LiYan_Guess_1="none"
VAR LiYan_Translate=true
VAR last_background="none"

EXTERNAL shuffle_next_choices()
=== function shuffle_next_choices() ===
    < DEBUG > NEXT CHOICES SHOULD BE SHUFFLED
        
EXTERNAL quit_game()
=== function quit_game() ===
    < DEBUG > GAME SHOULD QUIT
        
EXTERNAL change_background_ext(bg)
=== function change_background_ext(bg) ===
    < DEBUG > CHANGE BACKGROUND TO {bg}
    
    
=== function change_background(bg) ===
    ~ last_background = bg
    ~ change_background_ext(bg)
    




















