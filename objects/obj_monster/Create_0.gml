/// @description Declares monster types and stuff
cthulu_chance = 1;
is_cthulu = false;//(cthulu_chance >= random(cthulu_chance+1));

if (!is_cthulu)
{
	//Generate a random combination of parts
	parts = build_monster();
	current_monster = new Monster(parts.hair,parts.face,parts.skin,parts.ears);
}