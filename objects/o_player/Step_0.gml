/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12FFF2AE
/// @DnDArgument : "code" "///@description Player variables$(13_10)$(13_10)key_left = keyboard_check(vk_left) $(13_10)			|| keyboard_check(ord("Q"));$(13_10)key_right = keyboard_check(vk_right) $(13_10)			|| keyboard_check(ord("D"));$(13_10)key_jump = keyboard_check_pressed(vk_up) $(13_10)			|| keyboard_check_pressed(ord("Z")) $(13_10)			|| keyboard_check_pressed(vk_space);$(13_10)key_walk = keyboard_check(vk_control);$(13_10)key_tp = mouse_check_button_pressed(mb_right);$(13_10)key_shoot = mouse_check_button_pressed(mb_left);$(13_10)key_rewind = keyboard_check_pressed(ord("A"));$(13_10)$(13_10)key_action = key_left || key_right || key_jump || key_tp || key_shoot || key_rewind;"
///@description Player variables

key_left = keyboard_check(vk_left) 
			|| keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) 
			|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) 
			|| keyboard_check_pressed(ord("Z")) 
			|| keyboard_check_pressed(vk_space);
key_walk = keyboard_check(vk_control);
key_tp = mouse_check_button_pressed(mb_right);
key_shoot = mouse_check_button_pressed(mb_left);
key_rewind = keyboard_check_pressed(ord("A"));

key_action = key_left || key_right || key_jump || key_tp || key_shoot || key_rewind;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6142E4DA
/// @DnDArgument : "code" "/// @description Sprite system$(13_10)$(13_10)s_way = image_xscale;$(13_10)$(13_10)if key_action = false {$(13_10)	sprite_index = s_player_idle;$(13_10)}$(13_10)$(13_10)if key_action = false && s_way <= -1 {$(13_10)	sprite_index = s_player_idle_back;$(13_10)}$(13_10)$(13_10)if key_left = true {$(13_10)	sprite_index = s_player_run_back;$(13_10)	image_xscale = -1;$(13_10)}$(13_10)$(13_10)if key_left = true && key_walk = true {$(13_10)	sprite_index = s_player_walk_back;$(13_10)	image_xscale = -1;$(13_10)}$(13_10)$(13_10)if key_right = true {$(13_10)	sprite_index = s_player_run;$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)if key_right = true && key_walk = true {$(13_10)	sprite_index = s_player_walk;$(13_10)	image_xscale = 1;$(13_10)}"
/// @description Sprite system

s_way = image_xscale;

if key_action = false {
	sprite_index = s_player_idle;
}

if key_action = false && s_way <= -1 {
	sprite_index = s_player_idle_back;
}

if key_left = true {
	sprite_index = s_player_run_back;
	image_xscale = -1;
}

if key_left = true && key_walk = true {
	sprite_index = s_player_walk_back;
	image_xscale = -1;
}

if key_right = true {
	sprite_index = s_player_run;
	image_xscale = 1;
}

if key_right = true && key_walk = true {
	sprite_index = s_player_walk;
	image_xscale = 1;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 742BC1BB
/// @DnDArgument : "code" "///@description Movement$(13_10)$(13_10)var move = key_right - key_left;$(13_10)hsp = move * runsp;$(13_10)if (key_left && key_walk || key_right && key_walk) {$(13_10)	hsp = (move * runsp) / 4;$(13_10)}	"
///@description Movement

var move = key_right - key_left;
hsp = move * runsp;
if (key_left && key_walk || key_right && key_walk) {
	hsp = (move * runsp) / 4;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0895DFA0
/// @DnDArgument : "code" "///@description Jump$(13_10)$(13_10)vsp = vsp + grv;$(13_10)if jumpcan == true {$(13_10)if (place_meeting(x, y+1, o_ground) && key_jump = true $(13_10)|| place_meeting(x, y+1, o_wall) && key_jump = true) {$(13_10)	vsp = jumpsp;$(13_10)	alarm[0] = jumpcd;$(13_10)	jumpcan = false;$(13_10)}$(13_10)}"
///@description Jump

vsp = vsp + grv;
if jumpcan == true {
if (place_meeting(x, y+1, o_ground) && key_jump = true 
|| place_meeting(x, y+1, o_wall) && key_jump = true) {
	vsp = jumpsp;
	alarm[0] = jumpcd;
	jumpcan = false;
}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 543AFA2D
/// @DnDArgument : "code" "/// @description Collision$(13_10)$(13_10)// Horizontal$(13_10)if place_meeting(x+hsp, y, o_wall) {$(13_10)	while (!place_meeting(x+sign(hsp),y+1, o_wall)) {$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)x = x + hsp;$(13_10)$(13_10)// Vertical$(13_10)/// @description vertical collision$(13_10)$(13_10)if place_meeting(x,y+vsp,o_ground ) {$(13_10)	while (!place_meeting(x,y+sign(vsp), o_ground)) {$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)} else if place_meeting(x,y+vsp,o_wall) {$(13_10)	while (!place_meeting(x,y+sign(vsp), o_wall)) {$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)y = y + vsp;"
/// @description Collision

// Horizontal
if place_meeting(x+hsp, y, o_wall) {
	while (!place_meeting(x+sign(hsp),y+1, o_wall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// Vertical
/// @description vertical collision

if place_meeting(x,y+vsp,o_ground ) {
	while (!place_meeting(x,y+sign(vsp), o_ground)) {
		y = y + sign(vsp);
	}
	vsp = 0;
} else if place_meeting(x,y+vsp,o_wall) {
	while (!place_meeting(x,y+sign(vsp), o_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D65D684
/// @DnDArgument : "code" "/// @description Teleport$(13_10)$(13_10)$(13_10)if (tpcharge < tpchargemax && alarm[2] != 0) {$(13_10)	alarm[2] = tprec;	$(13_10)}$(13_10)$(13_10)if tpcan == true && tpcharge >= 1 {$(13_10)	if (hsp!=0 && key_tp = true && image_xscale = 1 && !place_meeting(x+tp,y,o_wall)) {$(13_10)		x = x+tp;$(13_10)		alarm[1] = tpcd;$(13_10)		tpcan = false;$(13_10)		tpcharge = tpcharge-1;$(13_10)		alarm[2] = tprec;$(13_10)	}$(13_10)	else if (hsp!=0 && key_tp = true && image_xscale = -1 && !place_meeting(x-tp,y,o_wall)) {$(13_10)		x = x-tp;$(13_10)		alarm[1] = tpcd;$(13_10)		tpcan = false;$(13_10)		tpcharge = tpcharge-1;$(13_10)		alarm[2] = tprec;$(13_10)	}$(13_10)	else if (hsp=0 && vsp != 0 && key_tp = true && !place_meeting(x,y-tp,o_wall || o_ground)) {$(13_10)		alarm[1] = tpcd;$(13_10)		tpcan = false;$(13_10)		tpcharge = tpcharge-1;$(13_10)		alarm[2] = tprec;$(13_10)		grv = 0.1;$(13_10)		tpcd = 1;$(13_10)		alarm[11] = 30;$(13_10)		// tp height variations$(13_10)		$(13_10)		if tpcharge = 4 {$(13_10)			y = y-tp;		$(13_10)		} else if tpcharge = 3 {$(13_10)			y = y-(tp*1.25);$(13_10)		} else if tpcharge = 2 {$(13_10)			y = y-(tp*1.5);$(13_10)		} else if tpcharge = 1 {$(13_10)			y = y-(tp*2);$(13_10)		}$(13_10)		$(13_10)	}$(13_10)}$(13_10)"
/// @description Teleport


if (tpcharge < tpchargemax && alarm[2] != 0) {
	alarm[2] = tprec;	
}

if tpcan == true && tpcharge >= 1 {
	if (hsp!=0 && key_tp = true && image_xscale = 1 && !place_meeting(x+tp,y,o_wall)) {
		x = x+tp;
		alarm[1] = tpcd;
		tpcan = false;
		tpcharge = tpcharge-1;
		alarm[2] = tprec;
	}
	else if (hsp!=0 && key_tp = true && image_xscale = -1 && !place_meeting(x-tp,y,o_wall)) {
		x = x-tp;
		alarm[1] = tpcd;
		tpcan = false;
		tpcharge = tpcharge-1;
		alarm[2] = tprec;
	}
	else if (hsp=0 && vsp != 0 && key_tp = true && !place_meeting(x,y-tp,o_wall || o_ground)) {
		alarm[1] = tpcd;
		tpcan = false;
		tpcharge = tpcharge-1;
		alarm[2] = tprec;
		grv = 0.1;
		tpcd = 1;
		alarm[11] = 30;
		// tp height variations
		
		if tpcharge = 4 {
			y = y-tp;		
		} else if tpcharge = 3 {
			y = y-(tp*1.25);
		} else if tpcharge = 2 {
			y = y-(tp*1.5);
		} else if tpcharge = 1 {
			y = y-(tp*2);
		}
		
	}
}