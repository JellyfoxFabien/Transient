/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 236783F7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_wall"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "o_wall"
var l236783F7_0 = instance_place(x + 0, y + 0, o_wall);
if (!(l236783F7_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 746BC95C
	/// @DnDParent : 236783F7
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3518BC85
	/// @DnDParent : 236783F7
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_player_run"
	/// @DnDSaveInfo : "spriteind" "s_player_run"
	sprite_index = s_player_run;
	image_index += 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3B28E229
	/// @DnDParent : 236783F7
	/// @DnDArgument : "key" "vk_shift"
	var l3B28E229_0;
	l3B28E229_0 = keyboard_check(vk_shift);
	if (l3B28E229_0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1424050C
		/// @DnDParent : 3B28E229
		image_xscale = 1;
		image_yscale = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 105B97EC
		/// @DnDParent : 3B28E229
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_player_walk"
		/// @DnDSaveInfo : "spriteind" "s_player_walk"
		sprite_index = s_player_walk;
		image_index += 0;
	}
}