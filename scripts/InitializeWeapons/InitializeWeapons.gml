// Defines the different Weapon struct items
function InitializeWeapons(parts)
{
	//Build Each weapon type and instantiate values
	
	mirrorWpn = instance_create_layer(x, y, "Instances", obj_weapon);
		mirrorWpn.name = "Mirror";
	    mirrorWpn.hair_immunity = parts.hair[2];
	    mirrorWpn.face_immunity =  parts.face[2];
	    mirrorWpn.face_immunity =  parts.skin[3];
	    mirrorWpn.ears_immunity =  parts.ears[0];
		mirrorWpn.Sprite = 
		
	charmWpn = instance_create_layer(x, y, "Instances", obj_weapon);
		charmWpn.name = "Stake";
	    charmWpn.hair_immunity =  parts.hair[1];
	    charmWpn.face_immunity =  parts.face[0];
	    charmWpn.ears_immunity =  parts.skin[2];
		
	charmWpn = instance_create_layer(x, y, "Instances", obj_weapon);
		charmWpn.name = "Charms";
	    charmWpn.hair_immunity =  parts.hair[0];
	    charmWpn.face_immunity =  parts.skin[1];
	    charmWpn.ears_immunity =  parts.ears[1];
		
	saltWpn = instance_create_layer(x, y, "Instances", obj_weapon);
		saltWpn.name = "Rocksalt";
	    mirrorWpn.face_immunity =  parts.face[1];
	    mirrorWpn.face_immunity =  parts.skin[0];
	    mirrorWpn.ears_immunity =  parts.ears[2];
	
	//store in array
	weapons = [mirrorWpn,stakeWpn,charmWpn,saltWpn];
	
	//Return array of all weapon types
	return weapons;
}