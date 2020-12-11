/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12832A8D
/// @DnDArgument : "code" "x = o_player.x+2;$(13_10)y = o_player.y - 64;$(13_10)$(13_10)if o_player.tpcharge = 4 {$(13_10)	image_index = 0;$(13_10)} else if o_player.tpcharge = 3 {$(13_10)	image_index = 1;$(13_10)} else if o_player.tpcharge = 2 {$(13_10)	image_index = 2;$(13_10)} else if o_player.tpcharge = 1 {$(13_10)	image_index = 3;$(13_10)} else if o_player.tpcharge = 0 {$(13_10)	image_index = 4;$(13_10)} "
x = o_player.x+2;
y = o_player.y - 64;

if o_player.tpcharge = 4 {
	image_index = 0;
} else if o_player.tpcharge = 3 {
	image_index = 1;
} else if o_player.tpcharge = 2 {
	image_index = 2;
} else if o_player.tpcharge = 1 {
	image_index = 3;
} else if o_player.tpcharge = 0 {
	image_index = 4;
}