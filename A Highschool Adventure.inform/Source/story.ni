"Classic Highschool Drama But with Murder" [so basically Riverdale] by a bunch of nerds

[the map of the high school]
School is a region.
the player has a number called health which is 5.

[I got new rules, I count 'em]


[Help]

Understand "help" as helping.
Helping is an action applying to nothing.
Report helping:
	say "You can GO to adjacent rooms. Use the commands n, s, e, w to go in each cardinal direction. [line break] You can OPEN doors.[line break]";
	say "You can ATTACK someone with a WEAPON in your inventory.";
	say "You can check your inventory by simply saying INVENTORY";
	say "You can TAKE, DROP, and GIVE items. Taking an item puts it in your inventory. [line break]";
	say "You can TALK to CHARACTER about TOPIC.[line break]";
	say "You can open a locker by saying SPIN locker to NUMBER. [line break]".

[Hallway]

School is a region.

Hallway is a region. Hallway is in School.
Underclassmen Hallway is a room. "Class just started, so the normally busy hallway seems eeriely quiet."
East Upperclassmen Hall is east of Upperclassmen Junction. "Senior side of the hallway. Close to the Gym."
Upperclassmen Junction is south of the Underclassmen Hallway. "Long coridors stretching left and right. An intimidating sight for underclassman."
West Upperclassmen Hall is west of Upperclassmen Junction. "Junior side of the hallway. Close to the Cafeteria."
Underclassmen Hallway, East Upperclassman Hall, Upperclassmen Junction, and West Upperclassmen Hall are in Hallway. 
Underclassmen Hallway, East Upperclassmen Hall, Upperclassmen Junction, and West Upperclassmen Hall are in Hallway. 


[classrooms]

Classrooms is a region. Classrooms is in School. 
Room 211 is a room. Room 211 is west of the Underclassmen Hallway. "Mr Redman's Classroom. He's known for beating the living hell out of his kids. Not cool Mr Redman. Not cool." 
Room 212 is a room. Room 212 is east of the Underclassmen Hallway. "Mrs Ford's Classroom. She's a real stickler for the rules. Everything with its purpose, everything in its place."
Room 213 is a room. Room 213 is south of East Upperclassmen Hall. "Mr. Hartman's Classroom. I heard he once was caught eating out of the Cafeteria Garbage."
Room 214 is a room. Room 214 is south of West Upperclassmen Hall. "Ms. Belvod's Classroom. Apparently she has a thing for Mr Redman. I certinly don't see the appeal..."
Room 211, Room 212, Room 213, and Room 214 are in Classrooms. 

[misc places]

Steps is north of the Underclassmen Hallway. "Hundreds of kids go up and down these steps everyday.".
The Gym is east of East Upperclassmen Hall. "A smelly old gymnasium. Full of sweat and humilation.".
The Cafeteria is west of West Upperclassmen Hall. "Serving barely-edible food substance since 1989.".
The Great Outdoors is north of the Steps. "Its pleasent and breezy. Much better than that that big block of concrete they call a school".
Steps, the Gym, the Cafeteria, and the great outdoors are in school. 

[general world rules]

the player has a number called health which is 20.
Definition: a person is dead if his health is less than 1.
The player is carrying a thing called a fish. 

Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").

A Locker is a kind of container. A locker is closed. 
Instead of opening a locker, say "You need the right combination to open this locker. Spin the locker to _ _ _ _ to open".
Spinning it to is an action applying to one thing and one number. Understand "spin [something] to [a number]" as spinning it to.
Check spinning it to: if the noun is not a Locker, say "[The noun] does not spin." instead. Report spinning it to: say "Click! nothing else happens."

fuck is an action applying to one thing. understand "fuck [something]" and "fuck the [something]"  as fuck. Instead of fuck, say "You fucked it".

Instead of taking inventory:
	if the number of things enclosed by the player is 0, say "I got nothing on me." instead;
	say "I got myself: [line break]";
	list the contents of the player, with newlines, indented, giving inventory information.

[combat action rules]
Check health is an action applying to one thing. Understand "check [something] health" as check health. Understand "[something] health" as check health. 
Check check health: if the noun is not a person, instead say "the [noun] isn't alive... yet.".
Carry out check health:
	say "[noun] has [health of noun] health".

People have a number called rapport. Rapport is usually 3. 
Know rapport is an action applying to one thing. Understand "know [something] relationship" as know rapport. Understand "[something] relationship" as know rapport. 
Check know rapport: if the noun is not a person, instead say "the [noun] isn't sentient... yet.".
Carry out know rapport:
	if rapport of noun is 1, say "[noun] doesn't much care for you";
	if rapport of noun is 2, say "[noun] doesn't really ever think of you.";
	if rapport of noun is 3, say "[noun] thinks you're alright.".

report damage is an action applying to one thing. Understand "report [something] damage" as report damage. Understand "[something] damage" as report damage. Check report damage: If the noun is not a weapon, instead say "no damage points".
Carry out report damage: 
	say "[noun] has [damage of noun] damage points.".

Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as something new.
Attacking it with is an action applying to one thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with.
Understand the commands "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as "attack". 
The attacking it with action has a number called inflicted.
Check an actor attacking something with something: 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] isn't a weapon, idiot."; 
		stop the action.
Check an actor attacking something with something: 
	if the noun is dead:
		if the actor is the player, say "stop beating a dead horse, [the noun] is already dead, dummy.";
		stop the action.
Carry out an actor attacking something with something: 
	decrease the health of the noun by the damage of the second noun;
	if the actor is the player, say "You attack [the noun] with [the second noun], causing [damage of second noun] point[s] of damage! [Noun] has [health of noun] health left. " ;
	if the actor is not the player, say "You are attacked with [the second noun], causing [damage of second noun] point[s] of damage! You have [health of noun] health left. ";
	if the rapport of the noun is not 1 and noun is not yourself, say "[noun] is now your enemy.";
	if the rapport of the noun is not 1, now rapport of the noun is 1;
	if the damage of the second noun is not 1, decrease the damage of the second noun by 1.

After attacking something with something:
	If the health of the noun is not 0, try the noun attacking the player with a random weapon which is carried by the noun;
	if the health of the noun is 0, say "you have ruthlessly murdered [noun].".

[characters]

Mr Redman, Mrs Ford, Mr Hartman, Diamond and Ms Belvod are people. People have a number called health. Health is usually 20. 
Mr Redman is in Room 211. Understand "Mr Redmans Classroom" as Room 211.  Understand "Mr R" and "Redman" as Mr Redman.
Mrs Ford is in room 212. Understand "Mrs Fords Classroom" as Room 212. Understand "Mrs F" and "Ford" as Mrs Ford. 
Mr Hartman and Diamond are in Room 213. Understand "Mr Hartmans Classroom " as Room 213. Understand "Mr H" and "Hartman" as Mr Hartman.
Ms Belvod is in Room 214. Understand "Mrs Belvods Classroom" as Room 214. Understand "Ms B" and "Belvod" as Ms Belvod.  
Brad is a person. The rapport of Brad is 1. Understand "ghost brad" as brad.
The description of Diamond is "An angel that has graced this school with her presence. She's soooooo hot.". The rapport of Diamond is 2. 

Rule for printing the name of Brad: 
	if the health of brad is greater than 0, say "Brad"; 
	otherwise say "Ghost Brad".

[things]
The description of a locker is "The beat up metal cages require a 4 digit code to open.".
My Locker is a Locker in the Underclassmen Hallway. The description of my locker is "Ah, my sweet old locker. Smells like teen spirit. I set the combination to something I would never forget- the year my favorite show, SponeBob SquarePants, premiered.".
After spinning the closed My Locker to 1999: 
	now My Locker is open; 
	say "[noun] opens, revealing [a list of things in noun]."
Diamonds Locker is a locker in the Underclassmen Hallway. The description of Diamonds Locker is "Mhmmmm, it even smells like her...". 
After spinning the closed Diamonds Locker to 0315: 
	now Diamonds Locker is open; 
	say "[noun] opens, revealing [a list of things in noun]."

There is a hankerchief. The description of the hankerchief is "Interesting. I don't know anyone who uses one of these anymore. And there's someone's lipstick stained on it. I think it might be Diamond's.". 
There is a spyglass. The description of the spyglass is "This could only be used by someone to spy on someone else....".
There is a note. The description of the note is "Looks like someone put this in Diamond's cubby to confess their love to her. Seeing as its crumpled up on the floor, I can't imagine that went very well.".

a weapon is a kind of thing. A weapon has a number called damage. Damage is usually 8. 
A fist is a weapon. A fist has damage 1. The player carries a fist. 
Redman's Fist is a weapon. Redman's fist has damage 1. Redman carries Redman's Fist. 
Ford's Fist is a weapon. Ford's fist has damage 1. Ford carries Ford's Fist. 
Hartman's Fist is a weapon. Hartman's fist has damage 1. Hartman carries Hartman's Fist. 
Belvod's Fist is a weapon. Belvod's fist has damage 1. Belvod carries Belvod's fist.
Brad's Fist is a weapon. Brad's fist has damage 1. Brad carries Brad's fist. 
Diamond's Fist is a weapon. Diamond's fist has damage 1. Diamond carries Diamond's Fist. 
Diamonds Pencil is a weapon. Understand "pencil" as Diamonds pencil. The description of Diamonds Pencil is "Pink and Sparkly. Also good for stabbing. And writing."
There is a scimitar, katana, baseball bat, monkey wrench, candlestick, axe, spear, halberd, sickle, mace, sledgehammer, chainsaw, ice pick, war hammer, pike, hockey stick, nunchucks, and rope which are weapons. Understand "wrench" as monkey wrench. Understand "baseball bat" as bat. Understand "stick" as hockey stick. 
A baseball bat, sledgehammer, nunchucks, and a candlestick have damage 6. A rope, sickle, and pencil have damage 3. A wrench, axe, spear, halberd, stick, and pike have damage 5.  
	
[scenes]
Scene Key is a number that varies. Scene Key is 1. 
Beginning, Bully Sequence, The Kidnapper, and Resolution are scenes. 
Beginning begins when play begins. Beginning ends when scene key is 2. 
Bully Sequence begins when Beginning ends. Bully Sequence ends when scene key is 3. 
The Kidnapper begins when Bully Sequence ends. The Kidnapper ends when scene key is 4. 
Resolution begins when The Kidnapper ends. Resolution ends when scene key is 5.  

Instead of asking Diamond about something for the first turn, say "DIAMOND: Oh thank goodness! We're supposed to start an exam in 5 minutes, and I left my pencil in my locker! Could you get it for me? The password is the birthday of my hero, RBG.".
Instead of telling Diamond about something for the first turn, say "DIAMOND: Oh thank goodness! We're supposed to start an exam in 5 minutes, and I left my pencil in my locker! Could you get it for me? The password is the birthday of my hero, RBG.".

Instead of asking Diamond about something during beginning, say "I'm freaking out, guy. Can you hurry and get my pencil? Like I said, the password is the month and day that Ruth Bater Ginsberg was born.".

[Bully Scene Rules]
When Bully Sequence begins:
	Move Brad to Underclassmen Hallway;
	Say "You hear knuckles scraping the floor. A lightning rod shoots down your spine. Brad approaches. [line break]
		BRAD: Hey Ugly! What are you doing, sniffing panties? You're a loser, panty sniffer. Always will be. Now it's time for you to pay for being such a pathetic waste of space. [line break]
		Brad always gets your blood boiling, but what's worse is you know he won't let you leave without trying to kill you. High school is rough like that. [line break]Check your inventory to see what you can preemptively attack your aggressor with".
Every turn during bully sequence:
	if Health of brad is less than 1, now scene key is 3. 
Instead of going from room during bully sequence:
	say "BRAD: You can't run from me!";
	decrease health of player by 1;
	say "[line break] Your health is now [health of player]".

When bully sequence ends:
	say "your hands are shaking, but you did it. You defeated your lifelong enemy. Some part of you is nervous, though. [line break]. [line break] .. [line break] ... [line break].... [line break] BRAD'S DISEMBODIED VOICE: What the actual hell!!! Why is my body on the ground??? What did you do to me, nerd!?!?!??! [line break] You've stolen my life, so I'm going to steal what you live for![line break] Your heart sinks. You know he could only be referring to one person- Diamond. You have to go find her.".
[Kidnapping scene rules]
	
Kidnapping Started is a number that varies. Kidnapping Started is 0.
When The Kidnapper begins:
	say "All of a sudden there is a loud yell from down the hall. You think it might be coming from one of the classrooms.";
	Now Diamond is nowhere;
	Move Brad to Room 213;
	increase Kidnapping Started by 1. 
Every Turn during The Kidnapper:
	say "[kidnapping started]";
	If the location of brad is the location of the player:
		if Kidnapping Started is 1: 
			say “GHOST BRAD: Anyways, I’m sure you’re looking for Diamond, and just to make your life more difficult, the shit-for-brains creators of this game brought me back to kidnap Diamond, and yatta yatta yatta, and something something, then you fight me again and win the game. Or I kill you. Doesn’t really matter to me. Here’s a clue for you. [line break] Only in America is Pizza considered a vegetable. Go get your 3 servings a day. [line break] Brad disappears in a puff of smoke.";
			increment Kidnapping Started;
			move brad to cafeteria;
			continue the action;
		otherwise if Kidnapping Started is 2:
			 say “GHOST BRAD: Surprise! It’s me again! The Ghost of Brad, that dude you brutally slaughtered in the hallway overthere. Remember how you left me over there face down in a pool of my own blood? Good times. Anyhow, here is another inane riddle to pump some meaningless content into this sorry excuse for a game (cough cough, No Man’s Sky, cough cough). Here's your next clue: [line break] Do you even lift bro?[line break] Brad disappears in a puff of smoke.";
			increment Kidnapping Started;
			move brad to gym;
			move Diamond to gym;
		otherwise if Kidnapping Started is 3:
			 say “GHOST BRAD: Guess whos back, back again? Brad’s back, tell a friend! Anyways, you've managed to perserver thus far, and I guess you deserve to know where Diamond is: Go find your girly girl. She’s in Room 211.[line break] Brad disappears in a puff of smoke.";
			increment Kidnapping Started;
			move brad to room 211;
			move diamond to room 211;
			Now scene key is 4.

[boss fight rules]
When Resolution begins:
	Now health of brad is 25;
	say "BRAD: Just kidding. You didn't think I would let you get away that easily, did you? Prepare for pain. [line break] Quick! Attack him before he attacks you.".
Instead of going from room during resolution:
	say "BRAD: You can't run from me!";
	decrease health of player by 1;
	say "[line break] Your health is now [health of player]".
Every turn during resolution:
	if health of brad is less than 1: 
		say "BRAD: I can't believe it. You killed me again. Its not even lunchtime. [line break] the ground opens up and the ghostly apparition of brad is swallowed up, and then the room returns to normal. You look at Diamond.";
		if rapport of Diamond is 1, say "DIAMOND: well, this is awkward. Look, I appreciate what you did for me, but I'm a kendo master and could've broken free at any time, but Brad kept threatening to kill you, because you're so... well... weak as hell. Sorry.  Also its really creepy that you think I'm some maniac pixie dream girl. I thought we as a culture got over that when we started not likeing Zooey Deschanel. See you around, I guess.[line break] Diamond walks out of the room, and you are broken hearted.";
		if rapport of Diamond is 2, say "DIAMOND: Thanks for the help. I'm so glad I can count on you. You're a really awesome friend. We should hang out more. [line break] Maybe it wasn't the happily ever after you were hoping for, but you are happy to be able to spend more time with her now. Who knows what could come from a strong friendship.";
		if rapport of Diamond is 3, say "Diamond throws her arms around you. She starts sobbing. [line break] DIAMOND: OMG I was so scared! He kept threatening to kill us both! I'm so glad you were there. We should get dinner sometime. Get to know one another more. [line break] As she squeezes you tightly, all you can think about is how lucky you were to run into the school bully this morning.";
		Now scene key is 5. 
			
When Resolution ends: 
	end the story. 

[Begining code that is implemented when we start to play the game]
When play begins: 
	Now Diamonds Pencil is inside Diamonds Locker.

After printing the banner text:
	say "[line break] [line break] Hey, Diamond, its ya boi..... no that's wrong.... What's hangin girl you lookin... nah she knows she looks amazing...[line break] [line break] Damn, this is way too hard. [line break][line break] ";
	say "Today is the day! I'm finally going to confess my love to Diamond, the only girl that I could ever love! I think she has Mr. Hartman's Underwater Basket Weaving class first.... now where is that.....".

When play begins: 
	Now Diamonds Pencil is inside Diamonds Locker;
	Move scimitar to a random room;
	Move katana to a random room;
	Move bat to a random room;
	Move candlestick to a random room;
	Move rope to a random room;
	Move axe to a random room;
	move spear to a random room;
	Move wrench to a random room;
	Move spear to a random person;
	Move halberd to a random person;
	Move sickle to a random person;
	Move mace to a random person;
	Move sledgehammer to Brad;
	Move chainsaw to a random person;
	Move ice pick to a random person;
	Move war to a random person;
	Move pike to a random person;
	Move hockey stick to Brad;
	Move nunchucks to a random person;
	Now the rapport of Mr Redman is a random number between 1 and 3;
	Now the rapport of Mrs Ford is a random number between 1 and 3;
	Now the rapport of Mr Hartman is a random number between 1 and 3; 
	Now the rapport of Ms Belvod is a random number between 1 and 3.

Every Turn:
	If the player is dead:
		Say "[line break]You died in combat and failed Diamond. She gets Stockholm syndrome and falls in love with Brad, and they (live) happily ever after. You will haunt these halls for eternity, but because you died so pathetically, everyone forgets that you existed pretty quickly. Sucks to be you, loser.";
		End the story;
	If the player is carrying Diamonds pencil, increase the rapport of diamond by 1. 
Every Turn during beginning:
	If Diamonds locker is open:
		Increase Scene Key by 1;
		say "Score! Her pencil is right where she said it would be.".