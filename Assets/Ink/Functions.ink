
VAR debug=true
VAR finished_intro=false
VAR next_visit=->Fanias

VAR LiYan_Guess_1="none"
VAR LiYan_Translate=true

EXTERNAL shuffle_next_choices()
=== function shuffle_next_choices() ===
    < DEBUG > NEXT CHOICES SHOULD BE SHUFFLED
        
EXTERNAL quit_game()
=== function quit_game() ===
    < DEBUG > GAME SHOULD QUIT
    






==== Cafeteria ===

{Cafeteria == 0:

You cross a threshold into a brightly lit space. The glare of the overhead lights is harsh. Tables and benches are arranged in neat rows, full of people, mostly humanoid, chatting amongst themselves. At the far end of the room there is a short line along an open window. Staff spoon out servings of lukewarm food for the people in line.

It's loud in here. The ceiling doesn't give anywhere for chatter to escape, and so here it stays, a clamor. You muse upon the exponential effect of a crowd; few people, and you can chat in a normal voice. But in a crowd, you have to speak louder to be heard over the other people, and now they have to speak louder, to be heard over you, until suddenly everyone is shouting.
}

{Cafeteria > 0: You once again enter the Barkhunian housing block's cafeteria, where {Yousef.First: you met Yousef earlier in the week.} {Fanias.Third: you met with Fanias and his friend recently.} It's just as bustling as last time, and the ceiling is just as low as you remember it.}

->->







=== Visit ===

{Fanias >= 3: You've spoken to Fanias {Yousef >= 3: and Yousef} {LiYan >=3: and LiYan} enough this week.}
{Yousef >= 3 and Fanias < 3: You've visited Yousef {LiYan >= 3: and LiYan} enough times this week.}
{LiYan >= 3: You've visited LiYan a few times this week already. Better to see someone else.}

- (visit)

+ {Fanias < 3} [Perhaps Fanias...]

{Fanias == 0: You think about checking in on Fanias, the minor lord of the Khas who comes to petition the Urun for help against his ancestral enemies.}
{Fanias == 1: You promised to meet Fanias at the Urunian Embassy, to help him petition the Urun for support.}
{Fanias == 2: Fanias messaged you to let you know that he'd be meeting with another of his people from back home, one of the Khas. You could meet them in the housing block's cafeteria.}

** [I'll visit Fanias.]

{Visit == 1: You decide you will pay Fanias a visit first.}
{Visit > 1 and Fanias == 0: You decide it's time to visit Fanias.}
{Visit > 1 and Fanias == 1: It's time for Fanias' appointment at the Urunian embassy. You'll meet him there.}
{Visit > 1 and Fanias == 2: You message Fanias, telling him you'll see him at the housing block's cafeteria in a few minutes.}

~next_visit=->Fanias

** [Maybe someone else.]

You put aside the thought of visiting Fanias.

-> visit

+ {Yousef < 3} [Maybe Yousef...]

{Yousef == 0: You think about checking in on Yousef, the refugee of the Yisua-Falas conflict, who left his family in Falas to save his wife and daughter.}
{Yousef == 1: Last time you met, Yousef wanted help delivering a package to his sisters in Falas. He asked to meet at Satna Market.}
{Yousef == 2: You don't have any specific reason to check in with Yousef, but you're sure he and the rest of the family would appreciate you checking in on them at their apartment in the housing block.}

** [I'll visit Yousef.]

{Visit == 1: You decide to visit Yousef first.}
{Visit > 1 and Yousef == 0: You decide it's time to visit Yousef.}
{Visit > 1 and Yousef == 1: You message Yousef. You'll be at Satna market in a few minutes.}
{Visit > 1 and Yousef == 2: You decide to drop in on Yousef and Youmna at their apartment in the housing block.}

~next_visit=->Yousef

** [Maybe someone else.]

Perhaps you'll visit Yousef another time.

-> visit

+ {LiYan < 3} [Consider LiYan...]

{LiYan == 0: You consider visiting LiYan, the Calanethi of unknown origin who is having trouble with the universal translator.}
{LiYan == 1: LiYan was having gravity problems, but the head of the housing block was able to find a solution for them. You could meet them at the Barakhunian school's gymnasium and try to learn more about their background.}
{LiYan == 2: LiYan wanted your help with translation at their permanent resettlement hearing at the Galatean Courthouse. {not LiYan_Translate: Although you declined, you still promised to meet them there.}}

** [I'll visit LiYan.]

{Visit == 1: You decide to visit LiYan first.}
{Visit > 1 and LiYan == 0: You decide it's time to check in on LiYan.}
{Visit > 1 and LiYan == 1: You message LiYan. You'll meet them at the gymnasium in a few minutes.}
{Visit > 1 and LiYan == 2: It's nearly time for LiYan's permanent resettlement meeting, so you'll head that way and meet them there.}

~next_visit=->LiYan

** [Maybe someone else.]

You decide to visit someone other than LiYan.

-> visit

-

* [Continue]

-

->->



=== Train ===

{"Barakhunian Refugee Housing Block." The train doors slide open, and you board the train, taking a seat. [i]Badunk, badunk, badunk.[/i] The rhythmic sound of the railcar starts up as the train leaves from the housing block station.|[i]Badunk, badunk, badunk.[/i] You find yourself annoyed by the sound of the train. You really wish that they'd replaced this thing with a maglev.|[i]Badunk, badunk, badunk.[/i] You sniff. The interior of the railcar smells like fried food today. You wonder who would be so rude as to eat on the train.|[i]Badunk, badunk, badunk.[/i] You look out the window of the railcar back to your apartment, mesmerized by the flames of Nova Station's dying star.|[i]Badunk, badunk, badunk.[/i] "Next stop. North star station," the PA announces. You've still got a few more stops 'til your apartment.|[i]Badunk, badunk, badunk.[/i] Train's full to bursting today, for some reason. Must be the construction on maglev line 4. No matter; you stay standing, holding onto a rail.|[i]Badunk, badunk, badunk.[/i] You find that you're no longer annoyed by the sound of the train on the rail. It's almost nostalgic to you, at this point.|[i]Badunk, badunk, badunk.[/i] You wonder idly about what is causing that sound. You resolve to ask the assistant at the station before you board next time.|[i]Badunk, badunk, badunk.[/i] You sit on the train, head bowed. You find yourself a little sad, worn down from all the support you've given this week. It's almost over, and you're not sure how much good you've done.}

->->


























