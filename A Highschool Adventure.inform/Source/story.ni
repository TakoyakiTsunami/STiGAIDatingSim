"Classic Highschool Drama But with Murder" [so basically Riverdale] by a bunch of nerds

[the map of the high school]
School is a region.
the player has a number called health which is 20.
The player has a number called rapport which is 20. 

[Hallway]
Hallway is a region. Hallway is in School.
Underclassmen Hallway is a room. "The normally busy hallway seems eeriely quiet after school hours."
East Upperclassmen Hall is east of Upperclassmen Junction. "Senior side of the hallway. Close to the Gym."
Upperclassmen Junction is south of the Underclassmen Hallway. "Long coridors stretching left and right. An intimidating sight for underclassman."
West Upperclassmen Hall is west of Upperclassmen Junction. "Junior side of the hallway. Close to the Cafeteria."
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
Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").

A Locker is a kind of container. A locker is closed. 
Instead of opening a locker, say "You need the right combination to open this locker. Spin the locker to _ _ _ _ to open".
Spinning it to is an action applying to one thing and one number. Check spinning it to: if the noun is not a Locker, say "[The noun] does not spin." instead. Report spinning it to: say "Click! nothing else happens."
Understand "spin [something] to [a number]" as spinning it to.

fuck is an action applying to one thing. understand "fuck [something]" and "fuck the [something]"  as fuck. Instead of fuck, say "You fucked it".

People have a number called health. Health is usually 20. 
Check health is an action applying to one thing. Understand "check [something] health" as check health. Understand "[something] health" as check health. Check check health: if the noun is not a person, instead say "the [noun] isn't alive... yet.".
Carry out check health:
	say "[noun] has [health of noun] health".

People have a number called rapport. Rapport is usually 3. 
Know rapport is an action applying to one thing. Understand "know [something] relationship" as know rapport. Understand "[something] relationship" as know rapport. Check know rapport: if the noun is not a person, instead say "the [noun] isn't sentient... yet.".
Carry out know rapport:
	if rapport of noun is 1, say "[noun] doesn't much care for you";
	if rapport of noun is 2, say "[noun] doesn't really ever think of you.";
	if rapport of noun is 3, say "[noun] thinks you're alright.".

[combat action rules]
report damage is an action applying to one thing. Understand "report [something] damage" as report damage. Understand "[something] damage" as report damage. Check report damage: If the noun is not a weapon, instead say "no damage points".
Carry out report damage: 
	say "[noun] has [damage of noun] damage points.".

Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as something new.
Attacking it with is an action applying to one thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with. 
Understand the commands "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as "attack".

a weapon is a kind of thing. A weapon has a number called damage. Damage is usually 5. 
The player carries a weapon called a fist. Fist has damage 1. 
Diamonds Pencil is a weapon. Understand "pencil" as Diamonds pencil. The description of Diamonds Pencil is "Pink and Sparkly. Also good for stabbing. And writing." 
There is a scimitar, katana, baseball bat, monkey wrench, candlestick, axe, spear, and rope which are weapons. Understand "wrench" as monkey wrench. Understand "baseball bat" as bat. 
A baseball bat and a candlestick have damage 4. A rope and pencil have damage 2. A wrench, axe, and spear have damage 3.  

Check an actor attacking something with something: 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] does not qualify as a weapon."; 
		stop the action.
Carry out an actor attacking something with something: 
	decrease the health of the noun by the damage of the second noun;
	say "You attack [the noun] with [the second noun], causing [damage of second noun] point[s] of damage!" ;
	if the rapport of the noun is not 1, say "[noun] is now your enemy.";
	if the rapport of the noun is not 1, now rapport of the noun is 1;
	if the damage of the second noun is not 1, decrease the damage of the second noun by 1. 
	
	
[characters]
Mr Redman, Mrs Ford, Mr Hartman, and Ms Belvod are people. 
Mr Redman is in Room 211. Understand "Mr Redmans Classroom" as Room 211.  Understand "Mr R" and "Redman" as Mr Redman.
Mrs Ford is in room 212. Understand "Mrs Fords Classroom" as Room 212. Understand "Mrs F" and "Ford" as Mrs Ford.
Mr Hartman is in Room 213. Understand "Mr Hartmans Classroom " as Room 213. Understand "Mr H" and "Hartman" as Mr Hartman.
Ms Belvod is in Room 214. Understand "Mrs Belvods Classroom" as Room 214. Understand "Ms B" and "Belvod" as Ms Belvod. 
Brad is a person. Understand "ghost brad" as brad. The rapport of Brad is 1. 
Inside Room 213 is a woman called Diamond. Understand "D" as Diamond. The description of Diamond is "An angel that has graced this school with her presence. She's soooooo hot." Diamond can be neutral, taken, or found. Diamond is neutral. The rapport of Diamond is 2. 
 
[things]
My Locker is a Locker in the Underclassmen Hallway. The description of my locker is "Ah, my sweet old locker. Smells like teen spirit.".
After spinning the closed My Locker to 1999: now My Locker is open; say "[noun] opens, revealing [a list of things in noun]."
After going from room containing my locker, now my locker is closed. 
Diamonds Locker is a locker in the Underclassmen Hallway. The description of Diamonds Locker is "Mhmmmm, it even smells like her...". 
After spinning the closed Diamonds Locker to 0112: now Diamonds Locker is open; say "[noun] opens, revealing [a list of things in noun]."
After going from room containing diamonds locker, now diamonds locker is closed. 


There is a hankerchief. A hankerchief is a thing. The description of the hankerchief is "Interesting. I don't know anyone who uses one of these anymore. And there's someone's lipstick stained on it. I think it might be Diamond's.". 
There is a spyglass. A spyglass is a thing. The description of the spyglass is "This could only be used by someone to spy on someone else....".
There is a note. A note is a thing. The description of the note is "Looks like someone put this in Diamond's cubby to confess their love to her. Seeing as its crumpled up on the floor, I can't imagine that went very well.".

[scenes]
Beginning, Bully Sequence, Kidnapping, and Resolution are scenes. 
Beginning begins when play begins. Beginning ends when Diamonds Locker is open. 
Bully Sequence begins when Beginning ends. [Bully Sequence ends when Brad is incorporeal.]
Kidnapping begins when Bully Sequence ends. 
Resolution begins when Kidnapping ends. 

When Beginning ends:
	Now Diamond is nowhere;
	Now Diamond is taken;
	say "Score! Her pencil is right where she said it would be.".

When Bully Sequence begins:
	Move Brad to Underclassmen Hallway;
	Say "You hear knuckles scraping the floor. A lightning rod shoots down your spine. Brad approaches.".

Every turn during Bully Sequence:
	say "You have [health of player].  Brad has [health of Brad].";
	say "Your weapon choices are [list of weapons carried by the player]".

When Kidnapping begins:
	say "All of a sudden there is a loud yell from down the hall. You think it might be coming from one of the classrooms.";
	Now hankerchief is in cafeteria;
	Now spyglass is in the great outdoors; 
	Now note is in gym. 

When Resolution ends: 
	end the story. 

[Begining code that is implemented when we start to play the game]
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
	Now the rapport of Mr Redman is a random number between 1 and 3;
	Now the rapport of Mrs Ford is a random number between 1 and 3;
	Now the rapport of Mr Hartman is a random number between 1 and 3; 
	Now the rapport of Ms Belvod is a random number between 1 and 3. 
	