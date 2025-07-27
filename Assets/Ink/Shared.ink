






==== Cafeteria ===

{Cafeteria == 1:

You cross a threshold into a brightly lit space. The glare of the overhead lights is harsh. Tables and benches are arranged in neat rows. The benches are full of people - mostly humanoids - chatting amongst themselves. At the far end of the room there is a short line along an open window. Staff spoon out servings of lukewarm food for the people in line.

It's loud in here. The ceiling doesn't give anywhere for chatter to escape, and so here it stays, a clamor. You muse upon the exponential effect of a crowd; few people, and you can chat in a normal voice. But in a crowd, you speak more loudly to be heard over others, and they speak more loudly to be heard over you, until suddenly everyone is shouting.
}

{Cafeteria > 1: You once again enter the Barakhunian housing block's cafeteria. It's just as bustling as last time, and the ceiling is just as low as you remember it.}

->->







=== Visit ===

{
- Fanias >= 3 and Yousef >= 3 and LiYan >= 3:
->Spaceport_Intro->
->->
}

{You lean back in your train seat and think about who you'll visit tomorrow...|You think about stopping by a friend's place to hang out, but first, you think about who you'll visit tomorrow.|You bring up your calendar. Six days left before you leave for Barakhun. Who will you check in on tomorrow?|You lean forward in your seat. Who will you visit tomorrow?|You think about what to have for dinner tonight, but first thing's first. Who will you see tomorrow?|You're almost back to your apartment. You should decide who you'll visit tomorrow.|The train reaches your stop. You stand up, and think about who you'll visit tomorrow.|Your head is a little heavy from the week. One last check-in, and you'll be done for the week.}


{Fanias >= 3: You've spoken to Fanias {Yousef >= 3: and Yousef} {LiYan >=3: and LiYan} enough this week.} <>
{Yousef >= 3 and Fanias < 3: You've visited Yousef {LiYan >= 3: and LiYan} enough times this week.} <>
{LiYan >= 3: You've visited LiYan a few times this week already. Better to see someone else.} <>

{next_visit==->Fanias and Fanias < 3: You just visited Fanias.}
{next_visit==->Yousef and Yousef < 3: You just visited Yousef.}
{next_visit==->LiYan and LiYan < 3: You just visited LiYan.}

- (visit)

+ {Fanias < 3 and next_visit != ->Fanias} [Perhaps Fanias...]

{Fanias == 0: You think about checking in on Fanias, the minor lord of the Khas who comes to petition the Urun for help against his ancestral enemies.}
{Fanias == 1: Your father came through. His connection with the Urun set up a meeting at the Urunian Embassy, and you promised to meet Fanias there.}
{Fanias == 2: The head of the housing block managed to locate another of Fanias' people from back home, one of the Khas. They're going to meet up in the housing block's cafeteria, and invited you to join them.}

++ [I'll visit Fanias.]

{Visit == 1: You decide you will pay Fanias a visit first.}
{Visit > 1 and Fanias == 0: You decide it's time to visit Fanias.}
{Visit > 1 and Fanias == 1: You realize that Fanias' appointment at the Urunian embassy is tomorrow. You'll meet him there.}
{Visit > 1 and Fanias == 2: You message Fanias, telling him you'll see him at the housing block's cafeteria in a few minutes.}

~next_visit=->Fanias

++ [Maybe someone else.]

You put aside the thought of visiting Fanias.

-> visit

+ {Yousef < 3 and next_visit != ->Yousef} [Maybe Yousef...]

{Yousef == 0: You think about checking in on Yousef, the refugee of the Yisua-Falas conflict, who left his family in Falas to save his wife and daughter.}
{Yousef == 1: Last time you met, Yousef wanted help delivering a package to his sisters in Falas. He asked to meet at Satna Market.}
{Yousef == 2: You don't have any specific reason to check in with Yousef, but you're sure he and the rest of the family would appreciate you checking in on them at their apartment in the housing block.}

++ [I'll visit Yousef.]

{Visit == 1: You decide to visit Yousef first.}
{Visit > 1 and Yousef == 0: You decide it's time to visit Yousef.}
{Visit > 1 and Yousef == 1: You message Yousef. You'll be at Satna market in a few minutes.}
{Visit > 1 and Yousef == 2: You decide to drop in on Yousef and Youmna at their apartment in the housing block.}

~next_visit=->Yousef

++ [Maybe someone else.]

Perhaps you'll visit Yousef another time.

-> visit

+ {LiYan < 3 and next_visit != ->LiYan} [Consider LiYan...]

{LiYan == 0: You consider visiting LiYan, the Calanethi of unknown origin who is having trouble with the universal translator.}
{LiYan == 1: LiYan was having gravity problems, but the head of the housing block was able to find a temporary solution for them.}
{LiYan == 2: LiYan wanted your help with translation at their permanent resettlement hearing at the Galatean Courthouse. {not LiYan_Translate: Although you declined, you still promised to meet them there.}}

++ [I'll visit LiYan.]

{Visit == 1: You decide to visit LiYan first.}
{Visit > 1 and LiYan == 0: You decide it's time to check in on LiYan.}
{Visit > 1 and LiYan == 1: You message LiYan. You'll meet them in a few minutes.}
{Visit > 1 and LiYan == 2: It's nearly time for LiYan's permanent resettlement meeting, so you'll head that way and meet them there.}

~next_visit=->LiYan

++ [Maybe someone else.]

You decide to visit someone other than LiYan.

-> visit

-

+ [Continue]

-

->->




=== Train ===

{"Barakhunian Refugee Housing Block." The train doors slide open, and you board, taking a seat. [i]Badunk, badunk, badunk.[/i] The rhythmic sound of the railcar starts up as the train leaves from the housing block station.|[i]Badunk, badunk, badunk.[/i] You find yourself annoyed by the sound of the train. You really wish that they'd replaced this thing with a maglev.|[i]Badunk, badunk, badunk.[/i] You sniff. The interior of the railcar smells like fried food today. You wonder who would be so rude as to eat on the train.|[i]Badunk, badunk, badunk.[/i] You look out the window of the railcar back to your apartment, mesmerized by the flames of Nova Station's dying star.|[i]Badunk, badunk, badunk.[/i] Train's full to bursting today, for some reason. Must be the construction on maglev line 4. No matter; you stay standing, holding onto a handle.|[i]Badunk, badunk, badunk.[/i] You find that you're no longer annoyed by the sound of the train on the rail. It's almost nostalgic to you, at this point.|[i]Badunk, badunk, badunk.[/i] You wonder idly about what is causing that sound. You resolve to ask the assistant at the station before you board next time.|[i]Badunk, badunk, badunk.[/i] You sit on the train, head bowed. You find yourself a little sad, worn down from all the support you've given this week. It's almost over, and you're not sure how much good you've done.}

->->



=== Spaceport_Intro ===

You lean back, and put your head on the window of the railcar. That's it, then. That was your last meeting. Only one thing left to do. Tomorrow morning, you'll see each of the residents off at the spaceport, and then - it's off to Barakhun, to finally reunite with your father.

* [Continue.]

~ change_background("spaceport")

With millions of travelers passing through the station at any given time, Nova Station's spaceport is busy at all times of the day, and right now is no exception. The crowd is like a living thing, pushing you this way and that.

->->








=== Finale ===

. . .

~ change_background("car")

Four weeks later, after a long space travel, you find yourself on Barakhun, in a small atmosphere-bound shuttle. Outside the window, you see the newly terraformed plains of Barakhun. Across from you sits your father.

You've already gotten the hugs and the pleasantries out of the way, and your father looks you in the eye. He says, "So, how was your time at the refugee housing block?" He smiles softly. "Thank you for covering for me. I hope it wasn't too difficult."

* [It was difficult.]

It was difficult, you say. You have no idea how your father does this kind of work on a daily basis.

He laughs. "It was difficult for me, too. It doesn't really get much easier, over time."

"Tell me about the people you met," he says.

* [You handled it.]

You handled it, you say. It was nothing.

"Oh really?" He arches one eyebrow. "Tell me about the people you met."

- (people)

* [Talk about LiYan, the stoic Malakethi.]

You met a person named LiYan.

** [They struggled with the gravity.]

-- They struggled with the gravity on the station, but you helped them to find a place of respite, a pool of water where they could be themselves.

** {LiYan_Translate} [You translated for them, or tried.]

You attempted to translate for them at their resettlement hearing, but the judge wouldn't have any of it.

** {not LiYan_Translate} [They had to fend for themselves at their resettlement hearing.]

You tried to find someone to translate for them at their resettlement hearing. Unfortunately, no translator could be found, and they had to try to translate for themselves.

-- When you saw them off at the spaceport, they were...

** [Strong.]

They were strong when you saw them off at the spaceport. They walked onto the shuttle, head held high. They refused to back down in the face of great adversity, and you doubt they ever will, no matter how much life grinds them down.

** [Angry.]

They were angry when you saw them off at the spaceport. It seemed that they would use that anger to fuel them for the rest of their life, to get revenge, in a way, on those who wronged them. You hope that they can keep it up.

** [Spiteful.]

They were spiteful when you saw them off at the spaceport. It seemed that they would try to use that spite to fuel them for the rest of their life, to get revenge, in a way, on those who wronged them. You hope that they can keep it up.

- TODO: Your father nods. Strength in anger.

* [Talk about Fanias, the prince of the Khas.]

You met Fanias, prince of the Khas.

** [He was attempting to save his people.]

-- Fanias tried to save his people from their enemies, who took his lands, captured his family. But the enemies weren't who he thought they were.

** [He petitioned the Urun.]

-- He went to petition the Urun, who were supposed to take care of his people. They wouldn't meet with him. It turns out that they were the betrayers all along, that they had chosen profit over justice.

But despite knowing this, Fanias wouldn't give up the fight. He chose to become more radical, than to give up. And you think...

TODO: Use choices

** [That was an admirable thing to do.]

You think that Fanias, in the end, is an admirable figure. That he would follow his moral compass to its logical conclusion, rather than to give up the fight.

** [That was a foolish thing to do.]

You think that Fanias is rather foolish. That he should have given up the fight when he saw that the odds were stacked against him. Or at least, to have chosen a different way to fight, than direct confrontation. 

-- TODO: Your father nods. Sometimes direct confrontation is useful. When is it necessary? When is it justified?

* [Talk about Yousef, Youmna, and Banias.]

You met a Falasi family. Their names were Yousef, Youmna, and Banias.

** [They escaped Falas.]

-- They were lucky enough to escape Falas, but they had to leave family behind, family that is now starving.

-- (repeat)

** [Yousef tried to find a way to help.]

Yousef paid some smugglers to try to send food to their family. 

TODO: What do you think about that from choices before?

TODO: Your father shakes his head. Yousef: The incredible guilt he felt.

-> repeat

** [Youmna was filled with rage.]

Youmna was filled with rage. Rage that she felt she could not let out, lest she upset those around her. She wanted to move on, to let go of it, but instead, she couldn't keep it from spilling out.

TODO: Youmna's rage. Understandable. And there's nothing good to be done about it. The cycle.

-> repeat

** [Banias wanted to see her family.]

Banias just wanted to see her aunts and uncles again. But, you suspect, she never will. Yisua has denied her that chance. Eventually, she will grow up, and that hole in her heart will never fill.

TODO: Banias. What will she fill that hole with? She has many choices; perhaps she'll forget them. Perhaps she will fill it with sorrow, anger, or vengeance. The cycle may continue, perpetuated by Yisua.

-> repeat

** ->

-- In the end, you're not sure if Yousef boarded the shuttle to New Tarnaeum.

** [You think Yousef went with Youmna and Banias to New Tarnaeum.]

You think that Yousef went with Youmna and Banias to New Tarnaeum. Surely he would have seen that they needed him. Surely he would have looked forward, to the future, rather than back, to his past.

** [You think Yousef tried to go back to Falas.]

You think that Yousef tried to go back to Falas. That overwhelming guilt he expressed, at not being able to help his family - you think that was eating him up inside, so much so that he had to go back and do what he could.

--

TODO: What you think he should have done.

And your father says: whatever choice he made, was the right one for him. We don't know how it would turn out.

-

As you look out the window at the Barakhun, and the rapidly-approaching capitol, you feel...

* [Hopeful.]

You feel hopeful for the future. You're confident things can get better, if you keep working towards a brighter future.

* [At peace.]

You feel at peace. You've done what you can, for now. That isn't to say you can't do more in the future.

* [Anxious.]

You feel anxious. You wonder how many more untold refugee stories there are, how much suffering there is in the world. You wonder how much you can truly affect.

* [Angry.]

Despite your peaceful surroundings, you can't help but feel angry at the world. How can these two things be true at the same time: for you to be coming home when so many people do not have a home?

- It is with this feeling that you approach your new home.

* [Fin.]

-> DONE








































