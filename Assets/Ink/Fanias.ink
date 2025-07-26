
=== Fanias ===

{ Fanias:
  - 1: -> First ->
  - 2: -> Second ->
  - 3: -> Third ->
  - else: PROBLEM IN Fanias! -> DONE
}

->->









= First

You walk through a plasteel corridor, dimly lit from the overhead lights. Doors, in an old style, line the corridor. People, mostly humanoid, walk in small groups, chatting about something or other. It reminds you a little of your old school.

The doors you pass have small plaques on them; "L. Sequim, Notary"; "J. Brakar, Housing Deputy"; "M. Pith, Placement Authority". You suppose your father probably has an office here somewhere, too.

As you reach the end of the hallway, you stop in front of a door: "B. Beet, Interspecies Relations".

It seems someone is arguing very loudly on the other side.

* [Open the door.]

- You enter the office of Mr. Beet.

It's overflowing with books in here; books are on every surface, in stacks on the floor, lining the bookshelves, and threatening the stability of the chair and the desk in the back of the room.

Behind the desk sits Mr. Beet, a large humanoid. His face is quite strained, and though he is attempting to look calm, his face is quite red. He seems to be sweating a little through his suit.

And in front of the desk is seated a young man. He is wearing a very expensive tailored vest and pants, and is currently turned around, looking at you, to see who has interrupted his tirade.

"And who might you be?" The young man inquires haughtily.

* [Someone from the housing block to check in on you.]

Just someone from the housing block, here to check on you, you say. Fanias, you presume?

He scoffs. "Presume indeed, right though you may be. And that is _prince_ Fanias to you, you lowly ingrate. You presume to come here and interrupt my meeting?"

* [And who might _you_ be?]

You quickly fire back, who might _you_ be?

The young man sputters a bit. "Well - I never!" He pauses, and draws himself up a bit. "Fah, I suppose mother always told me to speak well to those below me. I am Prince Fanias - you may address me as 'your majesty' - of the Khas."

"And now," he says, looking down on you, "Why have you interrupted my meeting?"

* [Continue]

- "Ah, actually," Mr. Beet says, "I asked them to come. Perhaps they may, ah, help us out with the situation."

"The situation!? There is no situation." Fanias stands up and points at Beet. He explains, very slowly. "I. Wish. For. An. Audience. With. The Urun. It should be easy! Is your translator picking this up or are your ears merely malfunctioning?"

Mr. Beet stammers. "Yes, and you shall have one! In a month, pending their availability. And of course, we will find accomodation for you -"

"A month!!" Fanias roars. "Again with this month! I need it sooner! You do not understand! It is a matter of life and death!"

- (listening)

{listening >= 4: -> quiet_listening}

* [Keep quiet.]

{Fanias points at Beet again. "I must see justice done! A grave injustice has been done me, and my people, and the only way to right this wrong is to petition the Urun!"|"If I do not get this meeting soon, there will be injustice heaped upon injustice, so much so until the very crust of the world cannot stand it!"|"Do you not feel it in your bones, as I do, when a wrong is done to you? When a blackguard gets their way? When the bandit makes off with the jewels? I cannot stand by idly!"|"And so I beseech you, you must help me, in the name of all that is good, to get me an audience with the Urun as soon as possible!"}

-> listening

* [Jump in.]

You jump in. What's this about the Urun? And why does Fanias need the meeting?

->after_listening

- (quiet_listening)

Fanias falls silent, waiting for Beet to say something. They timidly say, "Well, you see, I was hoping our friend here could help us with this. But, ah, you may need to explain the situation to them."

- (after_listening)

Fanias turns to you, as if surprised that you're still there. "Must I explain this again?" He sighs.

"It is very simple. The Khas' mortal enemy, the barbarians of our world, those hated people known as the Welds, invaded our kingdom and unjustly toppled our storied monarchy. My father was slain!"

The blackguards, the bandits -" Fanias chokes on his own rage a little - "Those utter mongrels! They slew my father, captured my mother, and even now, hold her captive, doing allfather-knows-what. I am the only one who escaped the Welds' monstrosity."

"And so, I am here to petition the Urun, who oversee our world, to grant me aid in righting this wrong."

Mr Beet jumps in. "And I thought you could help. Your father has some connections at the Urun embassy, if I recall."

You think for a moment...

* [Your father used to work at the Urun embassy.]

- That's right, your father used to work there, as a translator. It's possible that you could contact him and he could expedite the process.

Fanias throws up his hands. "Oh, thank the Allfather! Why didn't you say that earlier!?" He gets off the chair, toppling it with a clatter, and gets down on his knees. "Help me, Fanias, Prince of the Khas, and I, nay, the entire Khas people, will forever be in your debt! Our sons and daughters shall forever remember your name!

You look at Mr. Beet, who shrugs.

* [No need to kneel. You'll help.]

- (help)

There is no need to kneel, you say. You help Fanias up. Of course you'll help however you can.

"Thank you, friend! Ah, glorious day!" He's beaming. "Let me know when the meeting is, and I'll show up the moment you tell me! The very minute, nay, the picosecond!"

You note that there is no guarantee that you'll be able to secure a meeting, and Fanias shakes his head. "No, I can feel it! This is it! This is the first day that leads to the Welds' undoing!" He shakes his fist and strikes a heroic pose. {begrudge: Or as much as he can, still kneeling as he is.}

Mr. Beet looks incredibly relieved. "Now, if there isn't anything else..."

"Ah, there was one other thing!" Fanias quickly rights his chair and sits back down. "I wish to file a complaint about the food in this place. Now, it's hardly fit for a king. Perhaps you could look into importing some fresh Yarma from Doulathor..."

Mr Beet sighs and wipes some sweat off his face. He waves you out of the office.

- ->->

* [Make Fanias sweat a little.]

You look down at Fanias' kneeling form. If he wants his children to remember your name, perhaps he could name his firstborn son after you?

Fanias sputters a bit. "Surely - surely you jest."

** [You're joking.]

Of course you're joking. You help Fanias up off the floor. You'll help him. Just... as long as he stops talking so much, you say.

-> help

** [You're not joking.]

No, you're serious. Firstborn son. Your name.

He thinks for a moment. "Perhaps... My first daughter instead? Will that suffice?"

Mr Beet shakes his head and says to you, "My word - come now, there is no need for this, just help the man out." And get him out of my office, he implies, wordlessly.

*** [Fine.]

Oh, fine, you were kidding anyway. You help Fanias up off the floor. You'll help him. Just... as long as he stops talking so much, you say.

-> help

*** (begrudge) [Fine, but begrudgingly.]

Oh, fine, you were kidding anyway. You'll help him. As long as he kneels and begs just a little longer.

-> help

-

* [Leave.]

-

...

-> Train ->

// Message your father's friend.

-> Visit ->

->->




















= Second

It's been a while since you've seen a plascrete building; almost all of them fell out of use a century ago and have been replaced with newer, lighter, and easier to mold plasteel. But out here, on the outer edge of Ring Six, it appears they still have quite a few.

You're standing in front of one such plascrete building, the Urun embassy. It's a squat and wide gray building {LiYan.Third: , nothing like the gorgeous Galatean Courthouse you visited with LiYan. In comparison, it's |,} a little sad to look at, if you're being honest. You wonder why they haven't gotten around to replacing it yet.

It's crowded in by other buildings nearby. People walk the narrow streets and talk in low tones, hushed by the oppressive atmosphere. Some flags do a vague impression of a wave in the artificial breeze, and a dim sky completes the dismal scene.

"Not exactly what I expected," Fanias mutters beside you.

* [Enter the embassy.]

- Fanias walks forward and opens the door to the Urunian Embassy. You follow behind him, entering into a wide hallway.

The space is mostly empty, save for a receptionist's desk and a few perfunctory benches. Chipped engravings and faded murals give an impression of old splendor, long gone. Everything is just a little dirty.

Fanias looks a little dismayed, but he is trying not to let it show. He walks up to the receptionist. "Hello good sir, or, madam, or, ah..." He stops for a moment, attempting to discern the gender of the androgynous-looking humanoid in front of him. "Ah, or, person. We have an appointment with one Mr. Girun. I am here to petition the Urun, our mentor species, on behalf of all the Khas."

The receptionist looks down and taps on their screen. "Girun, confirmed. Wait, you will." They gesture to the benches on the other side of the sparse room.

"Thank you, good, eh, person." Fanias turns about uncertainly and goes to sit down. You follow suit.

Seems like you'll be waiting here for a little while. You've been wondering...

- (questions)

* [What is a mentor species?]

You've been wondering - what exactly is a mentor species? What makes Urun the Khas' mentor species?

Fanias frowns. "We are... How would you put it... somewhat, less developed, than many of the other species in the galaxy. Whereas you all have space travel, we are still playing with our melee weapons and trying to figure out how you make this 'plas creet'." He taps the bench you're sitting on.

"The Urun are there to help us along on our journey!  They keep watch over all that happens on our fair world, Nidaroen, and ensure that we are treated fairly by other species. And of course, they teach us things, when they feel the time is right. Such was the case just before the Welds attacked! Ahh, and we were so close to having the upper hand..." He shakes his fist.

-> questions

* (welds) [What did the Weld people do to the Khas?]

You ask what the Weld people did to the Khas.

"Those scoundrels!" Fanias looks instantly angry thinking about them. "They attacked us, without warning, in the middle of the night. In the midst of some negotiations with the Urun over our fruit harvest, no less! What utter boors, interrupting a meeting with our mentor species. No doubt this information will also help our case."

Fanias continues, "The negotiation was going incredibly well, too. The Urun were about to transfer technology to us in exchange for just 20% of the harvest! It is a lucky thing our general had to excuse himself at the last minute. And my brother, too. I am certain they are still in hiding on Nidaroen, waiting for my return, and their imminent rescue."

"But my father..." Fanias looks down. This is the first time you've seen him look sad. "And my mother... They were captured, or killed. I can't be sure which."

-> questions

* (fruit) {welds} [Why did the Urun want the Khas' fruit?]

What is so special about the Khas' fruit that the Urun would want to trade for it?

Fanis smiles proudly. "The Khas' fruit is special! Though... I'm not really sure why." He frowns. "I know that it can only grow on Nidaroen, on the Khas' land. I've heard it's some combination of our sun, and the very air that we breathe? Regardless, it is one-of-a-kind."

He leans in. "It can give one a certain... bliss.. if consumed in large quantities." He winks. "Many a mind have been opened by our fruit."

-> questions

* (attack) {welds} [Can Fanias give more details about the Weld attack?]

You ask for more details on the Weld attack. What was it like? How did they get in?

"Those scoundrels!" He repeats. "Those blackguards! In the middle of the night! One can scarcely believe the audacity! They are sly as a snake, and twice as... twice as... horrible!"

Fanias goes on at length. Eventually, he runs out of insults, and you learn that the Welds somehow snuck into the Khas' keep, under the cover of night. Inside sabotage seems the most likely culprit.

"And we have no idea how they got there, either! We are always ready for the spectre of war, and we heard no reports of troop movement." Fanias is fuming.

"I will see my father and mother released, or avenged. I must! The honor of our people depends on it!"

-> questions

* {welds} [You have no more questions.]

- You sit for a moment, absorbing what you have heard. Fanias is mercifully quiet.

After a few moments, the receptionist walks over. Fanias jumps out of his seat. "At last! Take us to Girun."

"No Girun." The receptionist shakes their head. "Girun, busy. Reschedule, we shall."

"Reschedule!?" Fanias looks about ready to explode. "Listen here, you fat-head! I have waited a week already for the chance for an audience, and you tell me Girun wishes to reschedule? This must be a misunderstanding! Justice cannot wait! This is an outrage! This is -"

Suddenly, a bubble pops into existence around Fanias. His yelling is muffled. He pounds his hand on the bubble, and winces, expression pained. This stops him from yelling for a moment.

"Quiet, necessary in the lobby." You catch a satisfied look on the receptionist's face.

* (reason) [Reason with the receptionist. Try to get him out.]

Come on, surely this is a bit much, even for Fanias. You tell the receptionist that you'll make sure Fanias leaves - just let him out.

The receptionist looks dubious. "Quiet?" You nod, looking at Fanias. He nods too, reluctantly.

The receptionist waves their hand, and the bubble pops. Fanias grits their teeth. "Fine. We will reschedule. But it had better be soon."

"Soon, it will be." The receptionist nods. "Message from us, soon." They walk back to their desk.

** [Exit the embassy.]

You exit the embassy, Fanias in tow, muttering under his breath.<>

* [You're satisfied too.]

Honestly... Fanias could do with a bit of humility. You don't do anything.

The bubble rises off the floor a little bit and then starts heading for the door with Fanias inside. He starts yelling anew. You can't quite make out any words, but you're sure he's saying a lot of stuff about "injustice" and "dastards".

When the bubble is fully outside, it pops, and he is deposited on the floor. He staggers and manages to catch himself, falling to one knee.

"Those... blackguards..." His voice is hoarse from yelling. "I can... not believe this utter rudeness."

** [Continue.]

- {reason: He | Fanias} shakes his head and sits down on the steps outside. "I don't understand. Things were not supposed to turn out like this. The Urun are the very species that is meant to guide our way. They should be helping me! Do they not see the righteousness of my cause?"

For the first time since you've met him, he looks utterly despondent. "My mother and father, captured or dead. My brother, in hiding. My closest advisors, slain, by the Weld. And it seems, the Urun, utterly unhelpful. Our family name... The burden is all mine."

He looks at you desperately. "You are my only hope. I know we have only just met a few days ago, but I feel utterly alone. Where else can I turn? What should I do?"

* (encouraging) [Be encouraging.]

You sit down next to him and pat him on the shoulder. Things will turn out well, you say. He's not alone; you'll help him as best you can.

Fanias seems to take some heart from your words. "Thank you. You are truly a good person. The Urun could stand to be more like you."

* (realistic) [Be realistic.]

You sit down with him. He has to be realistic, you say. There's not much more he can do. He'll have to wait for the next meeting with the Urun, and pray that they'll help him. It's the only chance he's got.

"Perhaps... perhaps you're right." He looks a little put out by your words, but seems to take some comfort in them. "Perhaps waiting is the best I can do. It simply does not feel like enough, when your people are scattered to the wind, your family taken hostage."

* (harsh) [Be harsh.]

You look down at him, meeting his eyes. There's nothing he can do about it. He should probably forget about his family and start a new life here, on Nova Station. He has plenty of privilege to use.

Fanias looks a little shocked by the suggestion. "That... Is that truly your advice? Truth be told, it is something that had crossed my mind, but..."

-

Fanias looks down, and is silent for a moment. He seems to gather resolve from somewhere, his gaze hardening. "{harsh: Perhaps you're right, but - no. I will not stand by idly. I will find a way to rescue my family. Justice will be done. I will continue fighting.} {realistic: I will wait for the Urun, but not for long. I must keep fighting for what I know is right.} Please," he says to you. "Help me find justice. I know it is not much, in the grand scheme of things. But I know you agree. It is not right for one's people to simply cease to be. Please help me, in whatever way you can."

* [Accept.]

Very well, you say. His plea seems heartfelt, even more so than the last one. You'll see what you can do.

* [Accept, grudgingly.]

Fine, you say. You may not like the guy very much, but this plea seems heartfelt, even more so than the last one. You'll see what you can do.

- "Thank you." Fanias nods. "Thank you. That's all I can ask."

* [Leave]

-

...

-> Train ->

// Message your father's friend. Maybe he has more connections he can pull.

-> Visit ->

->->




= Third

-> Cafeteria ->

* [Look for Fanias.]

Shading your eyes from the overhead lights, you scan the crowd. Ah - there's Fanias. It looks like he's speaking enthusiastically with another person.

You make your way over and greet Fanias. "Ah, there you are, friend!" He exclaims.

"Greetings," the other person says, rising. They're slim, with a narrow face and a ponytail. "I am named Tress. You may address me as she. Please, sit down. Fanias was just regaling me with tales of how things are, back home on Nidaroen." At this last bit, Tress has a slightly ironic smile on. You're not sure what to make of that.

Fanias is beaming. "I must tell you again, it is so good to run into someone from our home planet! Even if you have been... long estranged."

"By choice, I remind you." Tress nods. "I found my way to Nova Station long ago."

Fanias frowns. "Yes well, I understand, but still, home is home! Surely you will make your way back there at some point. Do you not remember the great harvest? Why, I remember when I was just a lad..."

* [Cut Fanias off.]

Okay, you think, enough of that. You cut in - earning a glare from Fanias - and ask Tress: Why did they leave Nidaroen?

"Oh," she says, waving her hand, "a bit of wanderlust, I suppose. I never much was for staying in one place. But I still occasionally pay attention to the news coming from Nidaroen, and I think I know what's going on with the Khas."

She seems strangely evasive about talking about why she left. But before you can pursue that, Fanias jumps on the last bit. "What do you mean, you 'know what's going on'?<>

* [Let him go on.]

You don't say anything, letting Fanias go on for a moment about his nostalgic childhood. But it's not long before Tress finds an opportunity to jump in.

"Now that our friend is here, why don't we discuss the matter at hand?" She says. "I've been paying attention to the news coming out of Nidaroen. I know about the Welds' attack, and I have some information you may find interesting."

Fanias leans back, squinting. "What do you mean, information?<>

- The story is rather simple; the Welds, the barbarians, took us by surprise, and destroyed our kingdom in a fell swoop."

* [Is there more to the story?]

You ask, is there more to the story than Fanias knows?

Tress nods. "The story only seems simple if you ignore the greater context."

* {Second.fruit and Second.attack} [You knew something seemed suspicious.]

Ah, you knew there was something suspicious about all this. The Welds, attacking in the middle of the night from an unknown vector, right as the Urunian negotiation over the fruit harvest was taking place... What is going on down on Nidaroen?

Tress smiles and raises her eyebrows. "Smart. So you have been paying attention."

- "Just to be clear... All of this is speculation. Officially, anyway." Tress leans forward, placing her elbows on the table. "You know that fruit that the Khas grows? That aphrodesiac that, mysteriously, can only grow on Khas? Well, it's... rather in demand right now. A passing fad, if you will, among many of the younger generation around the galaxy."

"With the galactic statues on primitive species -" she corrects herself quickly, as Fanias narrows his eyes - "primitive, relative to spacefaring species, anyway - the fruit had to be smuggled out, which limited the export rate. Hence, the negotations you were involved in." She gestures at Fanias. "The Urun wanted a piece of the market."

* [So the Welds attacked for the fruit?]

So, you say, the Welds were probably attacking the Khas to take control of the fruit export, for their own gain.

She tilts her head. "Well, you're right... and you're wrong."

* [Stay silent.]

Fanias jumps in. "Those dastards! I knew the Welds wanted the fruit harvest! But still... I've been thinking about it." He crosses his arms. "How did they get to the Khas capital so quickly? No technology of theirs could do so."

Tress nods, once, decisively. "And that is where we get into the heavy speculation."

- "Remember that the Urun aren't just the Khas' mentor species. They are the mentor species of all people on Nidaroen. They are supposed to keep the peace, ensuring that both the Khas and the Welds both thrive. But it is not unknown for such mentors to prioritize their own interests."

"So -" she raises her eyebrows. "The Welds conduct a surprise attack, using technology they shouldn't have, during a negotiation that wasn't going well for the Urun. They deny vehemently all accusations from the wider galactic community of course, but - what conclusions can one draw?"

* [So that's why the Urun haven't wanted to meet with Fanias.]

- "Those BASTARDS!" Fanias' fist hits the table so hard that conversation around you stops for a moment, and everyone looks at him. He ducks a little bit, and mutters, "Ah... sorry. How uncouth of me. Please, go back to your food."

Slowly, conversation resumes. Fanias buries his head in his hands. "All this time! All this time... One moment." He walks off for a bit, not leaving the room, just hovering by the door.

Tress looks at him. She almost seems amused.

- (questions)

* [How does Tress know this?]

You ask Tress, how does she know about all this?

"Like I said." She shrugs. "I watch the news."

** [You watch the news too, and you haven't heard about it.]

You note that you, too, watch the news, but you haven't heard about any such Urunian conspiracy. You had to search for any news about the Weld attack, and all you found were a few small articles.

She twists her mouth into a smile. "Sure, fair enough. Maybe I've got some sources. I didn't leave Nidaroen without help, you know."

** [Drop the subject.]

You decide to drop the subject. Tress looks at you wryly. "Look, best not to pry into my affairs. I've got my reasons."

-- -> questions

* (why) [Why isn't she trying to stop the Urun?]

Tress is from Khas, too. Why wouldn't she be trying to stop this blatant abuse of power by the Urun, like Fanias?

She shrugs. "Not my problem. I left long ago. I barely even count myself as Khas anymore." She gestures at Fanias. "Not like him. You'd think he'd be more free than I, coming from money and privilege and all that."

"But you know what?" She stretches her arms. "I almost pity him, bound by concepts like 'duty' and 'honor'. Way better to just forget about all of that. Make your own connections. Choose your own family."

** [That's irresponsible.]

That's irresponsible, you say. If you take care of your people, they will take care of you, unconditionally. Your friends will only carry you so far before you become too heavy of a burden.

"Is that right?" She looks amused again. "Must be why my family put me on the street after I told them I was a woman. Because I wasn't taking care of them enough."

** [You kinda get it.]

You kinda get it. Family isn't everything. Much better to choose who you associate with, for your own reasons.

She nods decisively again. "That's right. You can't trust family. My friends are the ones who took me in after I became a woman. They sheltered me, gave me a new home. We would die for each other."

-- You think about it. Tress has clearly been through a lot. Fanias' situation is clearly different though. Or is it?

** (people) [Fanias still has people he cares about on Nidaroen.]

You're sorry for all that Tress has been through, you say, but Tress' and Fanias' circumstances are clearly different. Fanias has family that he wants to save, back on Nidaroen. Shouldn't he fight for them?

Tress looks doubtful. "Perhaps. To be honest, I don't see much use in it. He's clearly outmanned, and outgunned. Going up against a mentor species, as the primitives they are? I can't see them winning."

"I'd help him make a new life here, on Nova Station. I did it. He can too."

** (wrong) [The Urun are clearly still in the wrong.]

You're sorry for all that Tress has been through, you say, but still - the Urun are clearly in the wrong. They're abusing their power, using it to take away the rights of a whole species. Fanias should keep up his fight.

Tress shrugs. "Sure, I support his crusade, nominally. But the more you study history, the more you realize - your struggle is just one among many, in an unending fractal of struggles. And, rather depressingly, that fractal is hugely unbalanced in the favor of those who are more powerful."

"Maybe that sounds too nihilistic. But I dunno." She shakes her head. "You only get one life, and you should live it as best you can. Why give it up to a useless fight?"

** (give_up) [Maybe Fanias should just give up.]

Hm, you muse. Perhaps it wouldn't be such a thing if Fanias gave up the fight. That maybe it's better for him to find his own way, separate from his people, like Tress did.

Tress spreads her arms. "And now you are enlightened."

-- -> questions

* ->

Fanias comes back to the table. He looks a little calmer.

"Tress," he says, "I thank you for coming to me with this invaluable information. I think... I think I must take some time to consider my next actions. May I contact you again soon?"

Tress shrugs. "Sure, why not. Might be fun."

* [Remind Fanias that the housing block is closing soon.]

- You remind Fanias that he might not have too much time to consider his next move, since the housing block is closing soon.

"Don't worry about that, friend," he says, resolutely. "I will find my own way. I am a prince, after all."

* [Leave.]

...

-> Train ->

-> Visit ->

->->











= Farewell

You depart the spaceport, having said farewell to both LiYan and Yousef's family. Thoughts still swirl in your mind about their fates, and you can't wait to talk to your father about all that's happened.. But you still have one more farewell left to give.

You board the maglev, taking it away from the spaceport.

* [...]

You take a seat in the a narrow booth. There is a small headset on the desk in front of you. You pick it up and put it on, looking through the resoglass window at Fanias.

"Hello, my friend." He's trying to be upbeat. "I'm glad you could make it before you departed for Barakhun."

* [What happened?]

You get straight into it. They're not giving you much time to make this call. How did Fanias end up in jail?

"For fighting!" he proclaims. "For struggling for a righteous cause. For attempting to free my people. For these and more. Never fear - I am a prince, and they cannot keep me here forever."

Okay, you say, but what did he _do_?

"I, well, perhaps it is not wise to confess to my crime here. But, I suppose, they did catch me red handed." He looks a little sheepish. "I attempted to gain entrance into the Urun embassy on my own. Through, ah, a window. With a metal pole. Unfortunately, it seems that this resoglass is somewhat more strong than normal glass."

- (questions)

* [That was unwise.]

That was not a wise thing to do. Especially the part where he got caught.

"I'm not looking to be wise anymore, friend." He shakes his head.

* [You understand.]

You get it. His family is trapped on Nidaroen, and the Urun are being spectacularly unhelpful. He's trying to get their attention in a way they can't ignore.

He nods. "That's exactly it, friend! You do understand."

* [Fanias... attempted violence?]

Fanias attempted to violently break and enter? How did we get here?

Fanias looks hurt. "Violence? Never! I did not hurt any person! I merely attempted to break a window. That is an object!"

-> questions

- "Let us be serious. The Urun will never listen to me. If those who rule break the rules, then why should I also follow the rules? What have I to gain from being cowed into submission?"

"Nay." Fanias shakes his head. "Better to fight, than give up. Better to live in glory than die in the darkness."

* [How will Fanias get out?]

- "Do not worry about me. I have already contacted Tress. She has already agreed to help me. I have my doubts that she will help me with the fight against the Urun, but that is no matter." He looks serious. "I will find allies, just as she has. And I will carry on the fight."

The police officer behind you taps you on the shoulder. Your time is up. That was absurdly short.

He thumps his chest with a fist. "Remember me, my friend! Remember Fanias, of the Khas. Remember that I did not give up, and never shall, as long as justice remains unserved!"

* [You will remember Fanias.]

- You swear you'll remember him. You stand up, and exit the small booth.

As you're leaving the station, you see Tress standing at a desk, paying Fanias' bail. "What's up?" She asks casually.

* [How did Fanias talk her into this?]

You ask, how did Fanias talk her into this?

Tress shrugs. "{Third.people or Third.wrong: To be honest... wasn't him. It was you. Earlier, at the cafeteria.} {Third.people: What you said about our situations being different - you're right. I can't judge him too harshly. I have people who I care about, and that I am willing to fight for. He should be able to care for his, too.} {Third.wrong: You were right. The Urun are in the wrong, and he should be fighting against them. I doubt I'll join him -" she shrugs - "but, hey, I can contribute.} {Third.give_up: Honestly? It's kind of endearing how fast he went from 'spoiled prince' to 'radical window-breaker'.}"

"Plus," she smiles bemusedly, "he's just kind of an amusing person to keep around."

* [You agree.]

You admit, he's kind of amusing.

She gives you a smile. "Dunno if we'll be good friends or anything, but hey, hopefully he can keep it up."

* [You disagree.]

You don't really agree. Fanias is kind of annoying.

She laughs. "Yeah, but that's what makes him amusing."

- Tress gives you a wave. "Take care of yourself. Don't go breaking any windows, you hear?"

* [Leave.]

->->









































