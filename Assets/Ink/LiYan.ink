
=== LiYan ===

{ LiYan_Count:
  - 1: -> First ->
  - 2: -> Second ->
  - 3: -> Third ->
  - else: PROBLEM IN LIYAN! -> DONE
}

~ LiYan_Count += 1

->->













= First

You enter a small courtyard. It seems well-tended; plants of various colors are arranged on the edges of the square courtyard, a few climbing up the buildings that border it. Benches are scattered around the inside of the square.

On one of these benches is hunched a humanoid person. They are unusually tall for Ring Six; nearly eight feet tall. They are staring one of the bushes, a purple-leafed one with a white flower.

* [Turn on your translator.]

-

Before you approach LiYan - or who you presume is them - you recall that LiYan does not speak any language you have in common. You tap your wrist, turning on your translator. An image flashes across your eyes - "Kaldeyn(TM) Universal Translator v1.0".

Hopefully this allows you to understand each other.

* (cautious) [Approach cautiously.]

You approach slowly, without saying anything. You scuff your feet a bit on the plasteel to announce your arrival.

The person looks up. Their facial features are somewhat elongated - matching their height - at least compared with your human features.

'LiYan?" you ask softly.

* (confident) [Approach confidently.]

You approach with confidence, your steps echoing on the plasteel. "LiYan?" you say.

The person looks up. Their facial features are somewhat elongated - matching their height - at least compared with your human features.

- LiYan says something, and relatively quickly, you see the text flash across your eyes: "Yes, that is my name". 

They look at you stoically. You're not entirely sure if Calanethi expressions carry over to human ones though.

* [Introduce yourself.]

- "Hello, I'm an intern at the housing block, here to check up on you," you say {cautious: slowly and clearly | confidently}.

LiYan doesn't respond, and their face remains stoic. They put their hand on their chest. You're not sure what they're doing.

After a few moments, they tap their wrist. Ah - their translator must not have been on. Though you're not sure what the hand to the chest was about - a Calanethi gesture, perhaps?

"Please repeat yourself," LiYan says, text flashing across your eyes.

You repeat, "I'm an intern at the housing block. I'm here to check up on you."

* (how_do) [Ask how LiYan is doing.]

LiYan looks back at the flower and hunches over more. They do a hand gesture, rotating their wrist with their hand outstretched. "Well, it is a challenge," they say. "The ------ is great."

* (need) [Ask if there's anything they need.]

LiYan looks back at the flower and hunches over more. They shake their head. "Yes," they say. "Is there a chance of accessing a ----- lightener? The ----- is great."

* (how_like) [Ask how they like Nova Station.]

LiYan looks back at the flower and hunches over more. They do a hand gesture, rotating their wrist with their hand outstretched. "Well. It is okay. The -------- is much, so I am very tired."

- You blink. What was that in the middle there? You've never seen the translator fail like that.

- (repeat)

* [Ask LiYan to repeat.]

You ask LiYan to repeat what they said. They shake their head, and repeat, very precisely: {how_do: "Well, it is a challenge. The ------ is great." } {need: "Yes. Is there a chance of accessing a ------- lightener? The ------ is great. } {how_like: Well, it is okay. The ------- is much, so I am very tired. }

You blink. There it is again. What's happening?

-> repeat

* [Debug the translator.]

You tap your wrist a few times to turn the translator off and on, and double-check a few menus to ensure that it's working.

-> repeat

* ->

- LiYan notices your surprise. They {how_do or how_like: make the hand gesture again, | make a hand gesture } rotating their wrist with their hand outstretched. "I know this problem," the text flashing across your eyes says. "It is always this way with your technology. The ------ peoples are invisible."

The... what people? You heard LiYan say something close to "Calanethi", but with a slight difference. And that hand gesture... perhaps a sign of frustration?

* [Continue]

- LiYan continues, "It is not enough for our ------ to step on us. It is not enough for the Calanethi ----- to be overwhelming. Or for me to move constantly." They straighten their back, making what - to you - sounds like a pained sound. "And now I am here dealing with this heavy --------!"

You're realizing that those untranslated bits correspond to specific phrases. You're pretty sure you hadn't heard the first two before, but that third one is the same as before.

- (figure_out_repeat)

* (figure_out) [Try to figure out what is paining LiYan.]

Surely there's a way you can figure out what LiYan means by this "heavy" thing that is paining them.

You say, sympathetically: "I'm sorry I can't understand, and I'd like to understand what is paining you. Can we try to figure out what you mean that is heavy?"

LiYan shakes their head, cautiously, and makes a small hand gesture. "Yes."

-> figure_out_repeat

* (words) {figure_out} [Ask LiYan to describe the phrase in different words.]

You ask LiYan to describe the phrase using some other words.

LiYan pauses for a moment, {sentence: once again } putting their hand to their chest. "----- is a pull. I am used to feeling less pull on Calaneth, my home."

-> figure_out_repeat

* (sentence) {figure_out} [Ask LiYan to use the phrase in another sentence.]

You ask LiYan to use the phrase in another sentence.

LiYan {words: once again } puts their hand to their chest. Then, after a few moments, they say, "I feel heavy because of ------".

-> figure_out_repeat

* (act_out) {figure_out} [Ask LiYan to act out the phrase.]

You ask them to act the phrase out.

LiYan stands up, seemingly with great difficulty. Their knees crack a little bit. They raise their hands - also with difficulty - then slowly lower themselves, and lay flat on the ground.

You notice that their entire body seems a little more relaxed while they're laying on the ground.

-> figure_out_repeat

+ [You have a guess as to what is paining them.]

You have a guess as to what LiYan is having trouble with:

** [INPUT_TEXT: LiYan_Guess_1]

-

{LiYan_Guess_1 == "gravity":
You ask LiYan if they are having trouble with the gravity on Nova Station.

-> after_gravity
}

{LiYan_Guess_1 != "gravity": You ask LiYan if their troubles have to do with {LiYan_Guess_1}. They nod their head. "No."}

* {words and sentence and act_out} [You know exactly what the problem is.]

From all the clues you've gathered, you know exactly what's going wrong. You ask LiYan: "Is the gravity that is giving you trouble?"

- (after_gravity)

"Yes!" LiYan says. "That's it."

From your research before coming to the housing block, you know that Ring Six spins at a specific rotation, reproducing the gravity that specific species - including humans - expect. And you also know that, because of this, the housing block typically only accepts the species that are used to this gravity.

If LiYan is used to some lower gravity, then their spine must be in incredible pain all day from the downward pull on them. It can't be easy for them just to exist on Ring Six.

You feel a little guilty about meeting them outside. It probably would have been easier to meet them somewhere where they could be laying down, instead.

- (apology)

* [Apologize for meeting them outside.]

You apologize for meeting them outside. It probably would have been easier for them to stay laying down.

LiYan nods. "No. The flower was worth it." They gesture at the flower they were staring at.

You file this info away for later.

-> apology

* [Move on, and promise to find a solution.]

You stand up and promise that you'll think about how to solve their gravity problem. For now, it's probably best that they go to lay down.

LiYan shakes his head gravely. "Thank you."

You part ways.

->->

// Train after: Solving LiYan's problem. Shoot a message off to the mentor to see if there's any space LiYan can use.


















= Second

In front of you is a large rectangular building. At the top are two words in large block lettering you can't read. You tap your wrist. "Gymnasium" appears over the words.

It was a short train ride to arrive here, just one stop down from the housing block. Apparently this building was part of a Barakhunian school not too long ago, but the kids have already packed up and left for the new homeworld.

* [Enter the Gymnasium.]

- You enter the Gymnasium through the pool entrance. It's quite a large, echoing space; a little eerie. It appears that the Barakhunians left the pool intact, for now, water and all.

Inside the pool is LiYan, floating on their back. They hear you coming in, and look at you, stoic as ever. They greet you in their language, and make elaborate hand gestures towards you.

Text appears across your vision from your translator: "Hello. A happy ------ day. This pool of water is a much needed relief from the great ------. I thank you very much for accomodating my request."

Although your translator is not picking up on it, you feel like the hand gestures are probably a sign of enthusiasm.

* [Be humble: this really was the least you could do.]

You shake your head, and say, no, this really was the least you could do. You wish there was some better way to accomodate them.

* [Joke: LiYan seems to take to water just like a fish.]

You smile. They seem to be taking to the water like a fish! You say as much, and LiYan makes a hand gesture back at you. The translator, as usual, doesn't pick it up - you hope that was the equivalent of a laugh.

* [You're just glad they have some relief.]

You're very glad that they're enjoying the pool, and glad that you could help.

-

LiYan and returns to floating. "I have a matter I would like to discuss with you, but we did not get much time to talk before. Do you have any questions for me first?"

Well, you were wondering...

- (questions)

* (why_leave) [Why did they leave Calaneth, their homeworld?]

You ask LiYan why they left Calaneth.

LiYan nods his head. "Great fighting," they say. "Battles beyond my comprehension, great weapon sounds in the sky. Through all this, we -------" - again, the word that sounds like Calanethi, but with a twist - "are maligned, and lost, dropped like --------".

LiYan stops, seeming to realize that the last bit might not have come through in translation. They nod, and try again. "We... the ------, we were, how to say... forgotten. A small group in a large world, with no technology of our own. These higher beings that fly their great air craft, they do not care about us."

Wait, LiYan is saying they are "a small group". From your reading, the Calanethi make up the majority on Calaneth. Does this mean they're not Calanethi? You file this away for the moment.

** [Continue]

"When the higher beings come to take our land to build a great craft station, we fought." LiYan nods their head. Their expression twists, their face strained. "Their weapons are too great. Many people return to -------. My friends. Some of my family."

"TWe were displaced. We, the ------, had no where to go. And now I am here."

-> questions

* (malakethi) {why_leave} [Is LiYan not Calanethi?]

You ask LiYan why they identify as "a small group". Are they not Calanethi?

LiYan twists their hand, a gesture you've come to read as frustration. "Not Calanethi. -------."

You fit your mouth around the unknown word. "Malakethi?" LiYan shakes their head in assent. You have them say it again, and enter the term into your translator.

-> questions

* {malakethi} [What were the Malakethi like, before the fighting?]

You ask for more information on the Malakethi.

"We... how say..." LiYan pauses to think about a translation. "We hooked the aquatic creatures for food." Ah, primarily fishers, then. "We kept some, sold some to Calanethi. Over time, more and more dependent on Calanethi goods."

"We were a community," LiYan continues. "Not like the Calanethi, separated and soulless. We -" they thump their chest with their fist, a strangely human gesture - "took care of each other."

-> questions

* {malakethi} [What was LiYan's role among his community?]

You ask LiYan what their role among the Malakethi was.

"Net gatherer. I am very good at swimming." LiYan thumps their chest again.

** [Ask for a demonstration.]

"Of course." LiYan dives into the pool, and takes off. They are a _very_ fast swimmer, especially considering the gravity. You watch LiYan do a couple of laps, in what would probably be record time for your race. At the end, they shake their head, droplets flying everywhere, and look back up at you.

For the first time, you see LiYan wearing an expression of something other than stoicism. They look... relaxed. Maybe even happy.

-> questions

* {why_leave} [If {malakethi:they|the Malakethi} didn't have spacecraft, how did LiYan leave?]

LiYan nods. "Luck."

LiYan explains that their family stayed in a refugee camp on Malaketh run by a different species - they don't know the name. Conditions at the camp were horrible; they had nourishment, but the food was a terrible quality.

Eventually, that camp was shut down by the ruling species. They were shuttled to another refugee camp, and they have been in limbo ever since.

-> questions

* {why_leave} [How did LiYan end up on a ring with mismatched gravity?]

LiYan nods their head. "I am placed at six camps before this one, within three solar cycles."

Wait, are you understanding them correctly? They've been moved from camp to camp six times within three years?

LiYan shakes their head. "Yes. One before here, unbearably hot. Before that, unbearably bright. And now, unbearably heavy. Our kind, too unknown. No right place for us, other than home. Or if there is, I do not know."

They nod. "I miss home."

-> questions

* {malakethi} [Why can they always understand you?]

You've been wondering how LiYan can always seem to understand you, even though your translator seemingly can't translate Malakethi very well.

LiYan rotates twists their hand. "This device -" they tap their wrist - "can only do translating to Calanethi. Well known language. Malakethi language, not well known."

"We Malakethi were forced to learn Calanethi. But I was not a good student. Can understand but not speak." They twist their hand."

-> questions

* {malakethi} [You don't have any more questions.]

- You thank LiYan for letting you ask so many questions. They said earlier that they wanted to ask you something; what was it?

LiYan shakes their head. "Yes, that is right."

"I have a meeting for --------- ---------- soon. Very important." You mention that the purpose of the meeting was untranslated, and LiYan nods. "Ah... I want to have a place to stay. Forever. Not this moving between places constantly. This meeting is with a people that may grant me a home."

It seems LiYan is applying for permanent settlement. That's great! But LiYan nods again. "Applied many times, many different people. It never occurs. But this is the first time I have a meeting."

"You have already seen the problems with the translator. Many problems with speaking Malakethi. I try hard to make it understandable, but it is still problematic."

"Will you... come and help me with this meeting? To translate for me?"

- (translate_choices)

* [Absolutely. Express confidence.]

Absolutely, you say. You will come to the meeting with them and plead their case.

LiYan's body relaxes. It looks as if a weight is lifted from them. "Thank you. You are truly a friend."

~LiYan_Translate=true

* (sure) [You're not sure if this is a good idea.]

You express with some hesitance that you'll be able to help, given that your translator also has trouble picking up their language. And you've never been to a resettlement meeting before...

LiYan twists their hand. "I cannot think of any other alternative. You took the time to understand my story. There is no one else I can trust."

-> translate_choices

* {sure} [You say yes, but with hesitance.]

You're not sure if you can do this properly, but with how much LiYan needs someone dependable... You might as well try. You say as much.

LiYan shakes their head. "That is all I ask. For you to try."

~LiYan_Translate=true

* (someone_else) {sure} [You'll try to find a Malakethi speaker to translate for LiYan instead.]

You say, well, perhaps you can see about finding another person to translate instead? Perhaps someone who speaks Malakethi? You'll message your mentor after this to find someone. Surely that will be better than you translating for them.

"If you think that is the best course of action... then you may try," LiYan expresses with some doubt. "Will you at least come after the meeting to meet me?"

Of course. That's the least you can do.

LiYan shakes their head. "Thank you."

~LiYan_Translate=false

- With that, LiYan bids you farewell. "I have used much of your time already. I will return to swimming for a while and then return to the complex. Thank you for coming to check on me. I will see you {someone_else: after | at} the meeting."

You bid LiYan farewell, and exit the gymnasium.

->->

// Train after: Think about how difficult it must be for LiYan to navigate the system without a translator.














= Third

"Galatean Courthouse" appears across your vision, as the doors open. You step off the maglev train. _So_ much faster and smoother of a ride than the old railway they have at the housing block.

You exit the maglev station to a wide plaza. You take a look at your feet, and note that the plaza is stone rather than plasteel. That must have taken some incredible structural reinforcement. And are those real trees bordering the plaza? Wow. The Galateans are clearly a wealthy species.

Across the plaza is a great, forbidding cylinder of a building. Gigantic pillars stretch all the way up to a simulated sky. Archways dot the facade. At the top of the building are some words, over which your translator helpfully overlays:

"Justice is the Highest Form of Life."

* [Approach the courthouse.]

- You walk across the wide plaza to the courthouse. You pass various people wandering the plaza, or hurrying across it to their destination. There is a panoply of galactic civilization on display here; humanoids, insectoids, gases, and plant creatures all occupy the space together.

You reach the massive door to the courthouse, and ignore it, instead entering through the smaller wicket gate inset into it. You wonder if the massive door is ever used for anything, or if it's just a decoration.

* [Continue]

- You find yourself in a cavernous space. It's not as busy in here as it was out in the plaza, but there are still some people inside, speaking in groups.

The interior is brutalist bare stone. There is no comfortable surface; the seats, the desks, everything is stone. Though the wide open space hushes the whispers of those speaking, the stone surfaces produce echoes, giving the whole space an eerie, liminal quality.

You check in at the front desk and allow yourself to be scanned for security. Then you step in, and follow the directions to the room where LiYan's resettlement meeting {LiYan_Translate: will take | should be taking} place.

{
 - LiYan_Translate:
->Third_TranslateInMeeting->

LiYan follows you out of the room.

 - else:
 
 But wait... Is that LiYan, sitting on a stone bench, outside the room? You thought the meeting would still be going.
}

 * [Check in on LiYan.]
 
- 

{Third_TranslateInMeeting_UhOh.shaking: LiYan is still wearing that unidentifiable expression, and is still shaking. | LiYan looks... strained. You're not sure how to interpret this expression. Their muscles are tense, especially in their hands, and they're shaking, almost vibrating. Their face, while stoic, is tensed up, their jaw clenched. }

They look up at you. Their eyes are a little wild. "I... am angry. Leave."

- (choices)

* (what_happen) {not LiYan_Translate} [What happened in the meeting?]

You ask LiYan what happened.

They nod sharply, and do a gesture you've never seen before - they punch a closed fist into the palm of their other hand.

"The meeting is delayed. There was no translator person available. Requested for next time. But there is no next time. The housing block is closing, and I will not be able to return."

They punch their hand again. "Now leave."

-> choices

* {LiYan_Translate or what_happen} [Wait, let's talk about it.]

"Talk what? No more talk." {what_happen: They repeatedly punch their fist into their other hand. | They do a gesture you've never seen before: they punch their closed fist into the palm of the other hand, several times. } It makes a loud smacking sound, echoing down the hallway.

"This ------- judge. This ------- system. It would see me stranded for another ------- ------ solar cycles. --------. -----------." LiYan follows this with a guttural sound, a kind of bark. The translator does not translate this.

Before you can do anything else, they stalk down the hallway towards the exit. People stare at them and mutter as they leave.

-> choices

* [Leave.]

You exit the courthouse.

->->






= Third_TranslateInMeeting

VAR podium=0
VAR assistant=false
VAR passive=false

LiYan is sitting outside the room on a stone bench. Although they're hunched over from the gravity, they greet you enthusiastically, with an excited gesture. "So glad to see you, friend. How are you doing?"

* [You're a little nervous about translating for LiYan.]

You admit to LiYan that you're a little nervous. What happens if you mess up? You hope you're not the reason that LiYan doesn't find a permanent home.

LiYan nods their head. They hold out their hand, seemingly expectantly. You're unsure of what they expect, so you hold your hand out too. They grab it, and hold it hard. "Friend, it is alright. Just do your best. I trust you."

* [You're excited. This meeting has been a long time coming.]

You're excited for LiYan. You're sure that the Galatean Mediator will see LiYan's side of it, and you'll do everything in your power to help them through this meeting.

LiYan shakes their head. They hold out their hand, seemingly expectantly. You're unsure of what is expected, so you hold your hand out too. They grab it, and hold it hard. "I am glad of your trust in me. ----- willing, they will be on our side."

- The door to the room opens, and a small face peers out. "They're ready for you," the Galatean says.

* [Enter the room.]

You enter the room first, and LiYan follows.

The interior of the room, just like the outside, is entirely stone, with one main difference - it's black stone. As the door shuts behind you, you realize just how dark the space is. Just two spotlights illuminate the room. One shines onto the short Galatean, who must be a judge, at the back of the room, sitting atop a podium.

The other spotlight shines down on a space. The attendant directs you to stand in the spotlight.

* (you_spotlight) [Stand in the spotlight.]

You take the initiative, moving forward into the spotlight.

* [Direct LiYan to stand in the spotlight.]

You direct LiYan to stand in the spotlight. They do so.

- The Galatean judge glares down at {you_spotlight: you | LiYan}. "Name?"

* {you_spotlight} [Give your name.]

~ podium++

You give your name instead of LiYan's.

The judge blinks, and looks at something behind her podium. "That's not who this meeting is for."

** [Explain that you're translating for LiYan.]

You explain that you're translating for LiYan, whom you gesture to.

-> Third_TranslateInMeeting_UhOh
->->

* {you_spotlight} [Give LiYan's name.]

LiYan, you say.

* ->

LiYan carefully pronounces their name.

- "And what are you here for?" The judge asks.

* {you_spotlight} [Say LiYan is here for permanent resettlement.]

You gesture at LiYan. They are here to obtain permanent resettlement, you say.

The judge looks confused. "Are you... translating for LiYan?"

-> Third_TranslateInMeeting_UhOh
->->

* {you_spotlight} [Say you're translating for LiYan, who is here for permanent resettlement.]

You gesture at LiYan. You're here to translate for them, you explain. They are requesting permanent resettlement.

-> Third_TranslateInMeeting_UhOh
->->

* ->

- LiYan says, "I am here to request -------- ---------."

You know that LiYan said "permanent resettlement", but the judge looks confused.

* [Quickly jump in and translate.]

You jump in and clarify: LiYan means to say, they're requesting permanent resettlement.

The judge remains confused. "Are you... supposed to be LiYan's translator?"<>

-> Third_TranslateInMeeting_UhOh
->->

* [Allow the judge to continue.]

~ assistant=true

The judge looks down at her podium {podium == 0: again}. "That... What?" The judge calls over their assistant, and they confer in hushed tones.

The judge looks up.<>

- "You are Calanethi, correct?"

* [Jump in and explain that LiYan is Malakethi.]

The judge looks confused. "And who are you?"

- (wait)

** [You're here to translate for LiYan.]

-> Third_TranslateInMeeting_UhOh
->->

** [You're just a friend.]

Just a friend of LiYan's, you say.

The judge shakes her head. "I'm sorry, but friends are not allowed in the courtroom. Please escort this person out." The last bit is said to the assistant.

The assistant moves to escort you out of the room.

Wait, you say...

 -> wait

* [Stay quiet.]

LiYan shakes their head. "No. I am ---------."

You know that they said they are Malakethi, but the judge clearly does not understand. They confer once again with their assistant.

"Clearly," the judge says, "there are some translation issues. Since you did not request a translator, we will need to delay this hearing to another time."

LiYan turns and looks back at you. They twist their hand.

** [Now is clearly the time to jump in.]

You're incredibly nervous, but clearly you have to jump in. You say you're here to translate for LiYan.

-> Third_TranslateInMeeting_UhOh
->->

= Third_TranslateInMeeting_UhOh

The judge looks down at her podium {podium == 0: again} {podium == 1: once more}. {assistant: She looks at her assistant, and they confer another time. | She calls her assistant up, and they confer in hushed tones. }

They finish talking, and judge looks up at {you_spotlight: you | LiYan}. "You did not request or record any translator. Unfortunately, we must delay this hearing until another time, when an official translator can be found. Hearing adjourned." They close their notes and make to stand up.

LiYan looks at you, pleading. They're tense, hunched over, and their hand is twisting. This clearly isn't okay.

Wait, you say. The judge looks up, clearly annoyed. You ask...

- (choices)

{choices == 2: The judge is clearly getting impatient.}
{choices == 3: The assistant is edging closer to you, their expression thunderous. They clearly don't appreciate this breach in courthouse etiquitte.}
{choices == 4:

"Now then. I have places to be. Meeting adjourned." The judge slams their notes, quite definitively, and quickly walks out of the room.

The assistant shoos you out. You walk out, frustrated.

->->
}

* (translator) [Why does LiYan need an official translator?]

Why does LiYan need an official translator? You're already here. Isn't it best to get on with the hearing?

The judge sighs. "Code 731, subsection 8a, amendment B. All official Galatean business must be conducted through an official translator for note-taking purposes. A translator will be provided by the authorities upon request."

-> choices

* (law_codes) {translator} [Point out that LiYan couldn't read the Galatean Law codes without a translator.]

You point out that, without a translator, LiYan couldn't even read the Galatean law codes to know that they would need a translator.

The judge shrugs dismissively. -> Judge_Da_Law -> 

-> choices

* (delay) [Until when will the meeting be delayed?]

When will the meeting be delayed until, you ask?

The judge shakes their head. "That's not my job. Schedule with the front desk. We'll process the request as soon as possible."

-> choices

* (exception) {delay} [The Barakhunian housing block is closing this week. Can't the judge make an exception?]

Soon, LiYan will be transferred to a faraway planet, you say. They won't have a chance to come back to this courthouse. Can't the judge grant an exception in this case?

The judge merely looks annoyed. -> Judge_Da_Law ->

-> choices

* (shaking) [Look at LiYan. Do they have any questions?]

You look at LiYan to see if they have a question.

They look... strained. You're not sure how to interpret this expression. Their muscles are tense, especially in their hands, and they're shaking, almost vibrating. Their face, while stoic, is tensed up, their jaw clenched.

They don't say a thing.

-> choices

* [{choices == 1: Actually, best not to agitate.| Best not to agitate any further.}]

You decide it's best not to push the issue any further, and you shake your head. {choices == 1: Nevermind, you say. | No further questions. }

The assistant shoos you off, and you hurry out of the room.

->->

= Judge_Da_Law

{Judge_Da_Law == 1: "The law applies to us all. It does not discriminate by species. And I am not dismissing your suit, I am merely delaying it." | They say, as if to a child:  "Once again, the law applies to us all. This is the basis for all galactic society. If we make an exception for one person, then what results next? Lawlessness!" }

->->

// Train after: Think about what could have gone differently.







= Farewell

You head towards the far end of the spaceport, at gate X-8, where LiYan should be waiting for their shuttle.

Given how your last encounter with LiYan ended, with them stalking off, you're pretty sure they were angry. You're feeling...

* [Apprehensive.]

You're apprehensive. You're not sure what to expect when you see them. You almost turn around, but the shame stops you, and you keep walking.

* [Resolute.]

You're resolute. You might not be sure what to expect, but you know you shouldn't avoid them. You'll face them and whatever they have to say.

- You spot LiYan, with their stoic expression. A single bag is at their feet. Their long back is bowed, fighting the gravity of this artificial place.

* [Say hello.]

- You walk up and say hello. You brace yourself a little bit.

LiYan shakes their head. They don't look at you, but they say, "Hello, my friend. It is good to see you."

With these words, you feel yourself relax a little bit. But they're still not looking at you.

* [Ask how they are feeling.]

You ask, cautiously, how LiYan is feeling.

LiYan nods. "I feel... frustrated." Their face tightens a little bit.

{not LiYan_Translate: "Frustrated, first, with you. For not helping translate." They shake their hand. "Frustrated. But I know you felt there was no good choice.}

* [Ask whether they are angry with you.]

You figure you might as well ask directly. Are they still feeling angry with you?

LiYan nods. "Not you... Not you. Angry at system."

{not LiYan_Translate: "With you... Disappointment. For not helping translate." They shake their hand. "Disappointed. But I know you felt there was no good choice.}

* (apologize) [Apologize that you couldn't have done more.]

You immediately apologize. You wish you could have done more, at every step. LiYan deserved better.

{not LiYan_Translate: LiYan shakes their head. "You could have. You could have translated." They shake their hand. "Disappointed. But I have thought. I know you felt there was no good choice.}

- Finally, they look up at you.

* [Continue]

"I have thought many thoughts. About many things. Why I was banished. Why I continue to find no home."

In the background, the shuttle boarding call goes out. LiYan stands up. Their hands clench, but then relax.

"No one wishes for me to exist. Not the Calanethi. Not the Galateans. I am inconvenient to exist." Something in their gaze becomes more resolute. "Well then. My existence is inconvenient for them? I will go to this eighth camp. I will be inconvenient. I will exist, and resist."

LiYan picks up their bag. They hold their hand to you.

* [Grasp their hand.]

You clasp their hand tightly. You wish them luck in their travel, and wherever they end up next.

"Thank you. I wish the same for us all."

* [Grasp their hand and apologize {apologize: again}.]

You clasp their hand, and apologize {apologize: again}. You're so sorry.

"Do not be. Existence is a gift."

- With that, LiYan straightens their back, and boards the shuttle, head held high.

->->
































