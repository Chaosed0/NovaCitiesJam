






==== Cafeteria ===

{Cafeteria == 1:

You cross a threshold into a brightly lit space. The glare of the overhead lights is harsh. Tables and benches are arranged messily, filled with of people - mostly humanoids - chatting amongst themselves. At the far end of the room there is a short line along an open window. Staff spoon out servings of lukewarm food for the people in line.

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

{|You lean back in your train seat and think about who you'll visit tomorrow...|Your thoughts move on. You think about who you'll visit tomorrow.|You bring up your calendar. Six days left before you leave for Barakhun. Who will you check in on tomorrow?|You lean forward in your seat. Now then - who will you visit tomorrow?|A PA announcement for the station breaks you out of your reverie. Who to visit next?|Your thoughts move on. Who will you see tomorrow?|You're almost back to your apartment. You should decide who you'll visit tomorrow.|The train reaches your stop. You stand up, and think about who you'll visit tomorrow.|Your head is a little heavy from the week. One last check-in, and you'll be done for the week.}


{Fanias >= 3: You've spoken to Fanias {Yousef >= 3: and Yousef} {LiYan >=3: and LiYan} enough this week.} <>
{Yousef >= 3 and Fanias < 3: You've visited Yousef {LiYan >= 3: and LiYan} enough times this week.} <>
{LiYan >= 3: You've visited LiYan a few times this week already. Better to see someone else.} <>

{next_visit==->Fanias and Fanias < 3: You just visited Fanias.}
{next_visit==->Yousef and Yousef < 3: You just visited Yousef.}
{next_visit==->LiYan and LiYan < 3: You just visited LiYan.}

- (visit)

+ {Fanias < 3 and (next_visit != ->Fanias or (Yousef >=3 and LiYan >=3))} [Perhaps Fanias...]

{Fanias == 0: You think about checking in on Fanias, the minor lord of the Khas who comes to petition the Urun for help against his ancestral enemies.}
{Fanias == 1: Your father came through. His connection with the Urun set up a meeting at the Urunian Embassy, and you promised to meet Fanias there.}
{Fanias == 2: The head of the housing block managed to locate another of Fanias' people from back home, one of the Khas. They're going to meet up in the housing block's cafeteria, and invited you to join them.}

++ [I'll visit Fanias.]

{Visit == 1: You decide you will pay Fanias a visit first.}
{Visit > 1 and Fanias == 0: You decide it's time to visit Fanias.}
{Visit > 1 and Fanias == 1: Fanias' appointment at the Urunian embassy is tomorrow. You'll meet him there.}
{Visit > 1 and Fanias == 2: You message Fanias, telling him you'll see him at the housing block's cafeteria tomorrow.}

~next_visit=->Fanias

++ [Maybe someone else.]

You put aside the thought of visiting Fanias.

-> visit

+ {Yousef < 3 and (next_visit != ->Yousef or (Fanias >=3 and LiYan >=3))} [Maybe Yousef...]

{Yousef == 0: You think about checking in on Yousef, the refugee of the Yisua-Falas conflict, who left his family in Falas to save his wife and daughter.}
{Yousef == 1: Last time you met, Yousef wanted help delivering a package to his sisters in Falas. He asked to meet at Satna Market.}
{Yousef == 2: It might be a good idea to check in on Yousef after your adventure at Satna Market. You can drop by his family's apartment.}

++ [I'll visit Yousef.]

{Visit == 1: You decide to visit Yousef first.}
{Visit > 1 and Yousef == 0: You decide it's time to visit Yousef.}
{Visit > 1 and Yousef == 1: You message Yousef. You'll meet him at Satna Market tomorrow.}
{Visit > 1 and Yousef == 2: You decide to drop in on Yousef and Youmna at their apartment in the housing block tomorrow.}

~next_visit=->Yousef

++ [Maybe someone else.]

Perhaps you'll visit Yousef another time.

-> visit

+ {LiYan < 3 and (next_visit != ->LiYan or (Fanias >=3 and Yousef >=3))} [Consider LiYan...]

{LiYan == 0: You consider visiting LiYan, the Calanethi of unknown origin who is having trouble with the universal translator.}
{LiYan == 1: LiYan was having gravity problems, but the head of the housing block was able to find a temporary solution for them.}
{LiYan == 2: LiYan wanted your help with translation at their permanent resettlement hearing at the Galatean Courthouse. {not LiYan_Translate: Although you declined, you still promised to meet them there.}}

++ [I'll visit LiYan.]

{Visit == 1: You decide to visit LiYan first.}
{Visit > 1 and LiYan == 0: You decide it's time to check in on LiYan.}
{Visit > 1 and LiYan == 1: You message LiYan. You'll meet them tomorrow.}
{Visit > 1 and LiYan == 2: LiYan's permanent resettlement meeting is tomorrow, so you'll meet them there.}

~next_visit=->LiYan

++ [Maybe someone else.]

You decide to visit someone other than LiYan.

-> visit

-

+ [Continue]

-

->->




=== Train ===

{"Barakhunian Refugee Housing Block." The train doors slide open, and you board, taking a seat. [i]Badunk, badunk, badunk.[/i] The rhythmic sound of the railcar starts up as the train leaves from the housing block station.|[i]Badunk, badunk, badunk.[/i] You find yourself annoyed by the sound of the train. You really wish that they'd replaced this thing with a maglev.|[i]Badunk, badunk, badunk.[/i] You sniff. The interior of the railcar smells like fried food today. You wonder who would be so rude as to eat on the train.|[i]Badunk, badunk, badunk.[/i] Another day, another check-in.|[i]Badunk, badunk, badunk.[/i] You look out the window of the railcar, mesmerized by the flames of Nova Station's dying star.|[i]Badunk, badunk, badunk.[/i] Train's full to bursting today, for some reason. Must be the construction on maglev line 4. You stand, holding onto a handle.|[i]Badunk, badunk, badunk.[/i] You find that you're no longer annoyed by the sound of the train on the rail. It's almost nostalgic to you, at this point.|[i]Badunk, badunk, badunk.[/i] You wonder idly about what is causing that sound. You resolve to ask the assistant at the station before you board next time.|[i]Badunk, badunk, badunk.[/i] You sit on the train, head bowed. You find yourself a little sad, worn down from all the support you've given this week. It's almost over, and you're not sure how much good you've done.}

->->



=== Spaceport_Intro ===

You lean back, and put your head on the window of the railcar.

* [That was your last meeting.]

- That's it, then. That was your last meeting with the residents of the housing block. Only one thing left to do.

Tomorrow morning, you'll see each of them off at the spaceport, and then - it's off to Barakhun, to finally reunite with your father.

* [You're nervous about the residents.]

Did you do enough? Will they be okay? You feel nervous about the fate of each of the residents. You owe it to them to see them off.

* [You're eager to get home.]

You think about Barakhun, and your father. You can't wait to see them again.

-

* [One last thing to do.]

-

~ change_background("spaceport")

The next day, you enter the Nova Station spaceport.

With millions of travelers passing through the station at any given time, the port is busy at all times of the day. Right now is no exception. The crowd is like a living thing, pushing you this way and that.

->->








=== Finale ===

. . .

~ change_background("car")

* [Four weeks later...]

- Four weeks later, after some packing and a long space journey, you find yourself on Barakhun.

You're in a small ground-based vehicle. Outside the window, you see the newly terraformed plains of Barakhun. The lake is placid. The grass waves in the soft breeze. The sky - a [i]real[/i] sky - is a shade of blue you've never seen.

Your father drives the vehicle. You've already gotten the hugs and the pleasantries out of the way earlier. He keeps his eyes on the road, and asks:

"So, how was your time at the refugee housing block? Tell me about it."

* [It was difficult.]

It was difficult, you say. You have no idea how the folks there do that kind of work on a regular basis.

He smiles softly. "I imagine it doesn't really get much easier, over time. Tell me about the people you met."

* [You handled it.]

You handled it, you say. It was nothing.

"Oh really?" He arches one eyebrow. "That easy, huh? Tell me about the people you met."

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

** [Angry.]

They were angry when you saw them off at the spaceport. It seemed that they would use that anger to fuel them for the rest of their life, to get a kind of revenge on those who wronged them.

** [Spiteful.]

They were spiteful when you saw them off at the spaceport. It seemed that they would try to use that spite to fuel them for the rest of their life, to get a kind of revenge on those who wronged them.

-- Your father thinks about the story you've told. "There is strength in anger," he says, a little hesitantly. His voice gets stronger as he goes on. "It can motivate you to do terrible, horrible things, but used properly, it can also drive you to keep going, to fight for a just cause."

"It's to be seen whether they can continue using it as a fuel, or if it burns them out."

-> people

* [Talk about Fanias, the prince of the Khas.]

You met Fanias, prince of the Khas, of Nidaroen.

** [He was attempting to save his people.]

-- Fanias tried to save his people from their enemies, who took his lands, captured his family. But the enemy wasn't who he thought they were.

** [He petitioned the Urun.]

-- He went to petition the Urun, who were supposed to take care of his people. They wouldn't meet with him. It turns out that they were the betrayers all along, that they had chosen profit over justice. Despite knowing this, Fanias wouldn't give up the fight.

Earlier, you told Tress that {Fanias.Third.people:Fanias should fight for the people that he loves.} {Fanias.Third.wrong:Fanias should fight the Urun because it is the right thing to do.} {Fanias.Third.give_up:Fanias should give up, and begin a new life.}

He chose to become more radical instead of giving up. And you think that was...

** [An admirable thing to do.]

You think that Fanias, in the end, is an admirable figure. That he would follow his moral compass to its logical conclusion, rather than to give up the fight.

** [A foolish thing to do.]

You think that Fanias made a foolish choice. That he should have given up the fight when he saw that the odds were stacked against him. Or perhaps that he should have found a different way to fight, rather than direct confrontation. 

-- Your father sighs, and looks sad. "As much as we want to believe that peaceful means can always prevail, I don't think it's always the case. Sometimes direct resistance is warranted, and necessary. It seems that Fanias is on his way to learning that."

"But he won't get anywhere by himself." He shakes his head. "I hope he learns, too, to find the allies he needs to properly fight the Urun."

-> people

* [Talk about Yousef, Youmna, and Banias.]

You met a Falasi family. Their names were Yousef, Youmna, and Banias.

** [They escaped Falas.]

-- They were lucky enough to escape Falas, but they had to leave family behind, family that is now starving.

-- (repeat)

** [Yousef tried to find a way to help.]

Yousef paid some smugglers to try to send food to their family. He tricked you into coming with him for safety, <>

{Yousef.Second.forgive:
{not (Yousef.Second.just_tell or Yousef.Second.law or Yousef.Second.opportunists):but you forgave him immediately, because you saw the depth of his grief.|and you forgave him, after investigating his motives.}
}

{not Yousef.Second.forgive: and you could not bring yourself to forgive him, despite the depths of his grief.}

-> repeat

** [Youmna was filled with rage.]

Youmna was filled with rage. Rage that she felt she could not let out, lest she upset those around her. She wanted to move on, to let go of it, but instead, she couldn't keep it from spilling out.

-> repeat

** [Banias wanted to see her family.]

Banias was just a child. She understood what was happening, but denied it. She wanted to see her aunts and uncles again. You suspect she never will; Yisua has denied her that chance. Eventually, she will grow up, and she will fill that hole in her heart with sorrow, or regret, or perhaps - rage, like her mother.

-> repeat

** ->

-- You wonder, in the end, whether Yousef boarded the shuttle to New Tarnaeum, or whether he tried to return to Falas.

** [You think Yousef moved on.]

You think that Yousef went with Youmna and Banias to New Tarnaeum. Surely he would have seen that they needed him. Surely he would have looked forward, to the future, rather than back, to his past.

** [You think Yousef went back.]

You think that Yousef tried to go back to Falas. That overwhelming guilt he expressed, at not being able to help his family - you think that was eating him up inside, so much so that he had to go back and do what he could.

--

Your father's face looks stricken. He cannot imagine having to make that choice. "I wonder which choice he made. I wonder which choice I would make."

-

You ride in silence for a minute. Then, your father asks:

"Do you wish you could have done more for them?"

* [You should have done more.]

Yes, you say. You should have done more. There simply wasn't enough time to really help. You did good, you think you had an impact, but you think - there was so much more you wish you could have done.

Your father nods. "Keep that feeling burning. The fight is never over. There will be more opportunities in the future."

* [You're relieved that it's over.]

Sure, perhaps you could have done more, but... You're mainly relieved that it's over. Absorbing their stories, trying to help - it took a toll on you. It was good that you stopped when you did.

Your father nods. "There's no shame in that. Take a break. Reflect on the experience. Perhaps you'll return to the work again, or perhaps you'll find a different way to help those in need."

-

He looks over at you briefly, and smiles. "I'm proud of you. You did a good job."

You smile back at him. You say, thanks, Dad.

You look back out the window, and see the towers of the Barakhunian capitol approaching. You're almost home.

You feel...

* [Hopeful.]

You feel hopeful. You're confident things can will get better, and that the future is bright.

Only you can say whether this hope energizes you to do more in the future, or if it will keep you complacent.

* [Anxious.]

You feel anxious. You wonder how many more untold refugee stories there are, how much more suffering there is in this universe.

Only you can say whether this anxiety fuels you, or whether it paralyzes you.

* [At peace.]

For now, you feel at peace. You've done what you can; helped those in need.

Only you can say whether being at peace energizes you to do more in the future, or if it will keep you complacent.

* [Angry.]

Despite your peaceful surroundings, you can't help but feel angry at the world. How can you be coming home when so many people do not have a home?

Only you can say whether this anger fuels you, or whether it paralyzes you.

- It is with this feeling that you approach your new home.

* [Fin.]

-

~ change_background("tmp-background")

. . . . . . . .

Thank you for playing. The below button will take you back to the main menu.

* [Main Menu]

-

~ finish()

The end...

-> END








































