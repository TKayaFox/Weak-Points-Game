/// @description Declares monster types and stuff	
randomize();
cthulu_chance = 0.1;
var randomNum = random(1);
is_cthulu = (cthulu_chance >= randomNum);

if (!is_cthulu)
{
	//Generate a random combination of parts
	parts = build_monster();
	current_monster = new Monster(parts.hair,parts.face,parts.skin,parts.ears);
}