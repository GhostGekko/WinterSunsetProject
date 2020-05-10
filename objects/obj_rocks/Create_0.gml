//depth = 2;

rockNumber = irandom(3);

switch(rockNumber){
	case 1:
		sprite_index = spr_rockBig;
		break;
	case 2:
		sprite_index = spr_rockMedium;
		break;
	case 3:
		sprite_index = spr_rockSmall;
		break;
}

vsp = 0;

grv = .5;