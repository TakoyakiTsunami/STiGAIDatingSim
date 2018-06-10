"Classic Highschool Drama But with Murder" by a bunch of nerds

[the map of the high school]
School is a region.
the player has a number called health which is 5.

[Hallway]
Hallway is a region. Hallway is in School.
Underclassmen Hallway is a room. "The normally busy hallway seems eeriely quiet after school hours."
East Upperclassmen Hall is east of Upperclassmen Junction. "Senior side of the hallway. Close to the Gym."
Upperclassmen Junction is south of the Underclassmen Hallway. "Long coridors stretching left and right. An intimidating sight for underclassman."
West Upperclassmen Hall is west of Upperclassmen Junction. "Junior side of the hallway. Close to the Cafeteria."
Underclassmen Hallway, East Upperclassman Hall, Upperclassmen Junction, and West Upperclassmen Hall are in Hallway. 


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
Steps, the Gym, the Cageteria, and the great outdoors are in school. 

[general world rules]
Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").

A Locker is a kind of container. A locker is closed. 
Instead of opening a locker, say "You need the right combination to open this locker. Spin the locker to _ _ _ _ to open".
Spinning it to is an action applying to one thing and one number. Check spinning it to: if the noun is not a Locker, say "[The noun] does not spin." instead. Report spinning it to: say "Click! nothing else happens."
Understand "spin [something] to [a number]" as spinning it to.

fuck is an action applying to one thing. understand "fuck [something]" and "fuck the [something]"  as fuck. Instead of fuck, say "You fucked it".

[characters]
Mr Redman, Mrs Ford, Mr Hartman, and Ms Belvod are people. People have a number called health. Health is usually 5. 
Mr Redman is in Room 211. Understand "Mr Redmans Classroom" as Room 211.  Understand "Mr R" and "Redman" as Mr Redman.
Mrs Ford is in room 212. Understand "Mrs Fords Classroom" as Room 212. Understand "Mrs F" and "Ford" as Mrs Ford.
Mr Hartman is in Room 213. Understand "Mr Hartmans Classroom " as Room 213. Understand "Mr H" and "Hartman" as Mr Hartman.
Ms Belvod is in Room 214. Understand "Mrs Belvods Classroom" as Room 214. Understand "Ms B" and "Belvod" as Ms Belvod. 
There is a man named Brad. Brad can be either undefeated or defeated. Brad is undefeated.
Inside Room 213 is a woman called Diamond. Understand "D" as Diamond. The description of Diamond is "An angel that has graced this school with her presence. She's soooooo hot." Diamond can be neutral, taken, or found. Diamond is neutral. 
 
[things]
My Locker is a Locker in the Underclassmen Hallway. The description of my locker is "Ah, my sweet old locker. Smells like teen spirit.".
After spinning the closed My Locker to 1999: now My Locker is open; say "[noun] opens, revealing [a list of things in noun]."
After going from room containing my locker, now my locker is closed. 
Diamonds Locker is a locker in the Underclassmen Hallway. The description of Diamonds Locker is "Mhmmmm, it even smills like her...". 
After spinning the closed Diamonds Locker to 0112: now Diamonds Locker is open; say "[noun] opens, revealing [a list of things in noun]."
After going from room containing diamonds locker, now diamonds locker is closed. 

a weapon is a kind of thing. A weapon has a number called damage. Damage is usually 1. 
Diamonds Pencil is a weapon. Understand "pencil" as Diamonds pencil. The description of Diamonds Pencil is "Pink and Sparkly. Also good for stabbing. And writing." Diamonds Pencil has damage 2.
There is a scimitar, katana, baseball bat, monkey wrench, candlestick, and rope which are weapons. The scimitar has damage 5. the Katana has damage 5. The baseball bat has damage 3. Understand "bat" as baseball bat. The monkey wrench has damage 2. understand "wrench" as monkey wrench. 

[clues]
There is a hankerchief. The description of the hankerchief is "Interesting. I don't know anyone who uses one of these anymore. And there's someone's lipstick stained on it. I think it might be Diamond's.". 
There is a spyglass. The description of the spyglass is "This could only be used by someone to spy on someone else....".
There is a note. The description of the note is "Looks like someone put this in Diamond's cubby to confess their love to her. Seeing as its crumpled up on the floor, I can't imagine that went very well.".

[scenes]
Beginning, Bully Sequence, Kidnapping, and Resolution are scenes. 
Beginning begins when play begins. Beginning ends when Diamonds Locker is open. 
Bully Sequence begins when Beginning ends. Bully Sequence ends when Brad is defeated.
Kidnapping begins when Bully Sequence ends. 
Resolution begins when Kidnapping ends. 

When Beginning ends:
	Now Diamond is nowhere;
	Now Diamond is taken;
	say "Score! Her pencil is right where she said it would be".

When Bully Sequence begins:
	Move Brad to Underclassmen Hallway;
	Say "You hear knuckles scraping the floor. A lightning rod shoots down your spine. Brad approaches.".

When Kidnapping begins:
	say "All of a sudden there is a loud yell from down the hall. You think it might be coming from one of the classrooms.".

[Begining code that is implemented when we start to play the game]
When play begins: 
	Now Diamonds Pencil is inside Diamonds Locker.