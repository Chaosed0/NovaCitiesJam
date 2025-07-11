
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

= Second

Stub!

->->

= Third

Stub!

->->

= Farewell

Stub!

->->
















