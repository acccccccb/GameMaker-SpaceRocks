/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C9C80CB
/// @DnDArgument : "code" "/// @description 在此处插入描述 $(13_10)// 你可以在此编辑器中写入代码 $(13_10)if keyboard_check(vk_up) {$(13_10)        motion_set(image_angle,4);$(13_10)}$(13_10)$(13_10)if keyboard_check_released(vk_up) {$(13_10)        speed = 0;$(13_10)}$(13_10)$(13_10)$(13_10)if keyboard_check(vk_left) {$(13_10)        image_angle += 4;$(13_10)}$(13_10)$(13_10)if keyboard_check(vk_right) {$(13_10)        image_angle -= 4;$(13_10)}$(13_10)$(13_10)move_wrap(true, true, 0);$(13_10)$(13_10)$(13_10)mouse_image_angle = point_direction(x, y, mouse_x, mouse_y);$(13_10)image_angle = mouse_image_angle"
/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if keyboard_check(vk_up) {
        motion_set(image_angle,4);
}

if keyboard_check_released(vk_up) {
        speed = 0;
}


if keyboard_check(vk_left) {
        image_angle += 4;
}

if keyboard_check(vk_right) {
        image_angle -= 4;
}

move_wrap(true, true, 0);


mouse_image_angle = point_direction(x, y, mouse_x, mouse_y);
image_angle = mouse_image_angle

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 6999ABC7
/// @DnDArgument : "var" "rock_big_num"
/// @DnDArgument : "object" "obj_rock_big"
/// @DnDSaveInfo : "object" "obj_rock_big"
rock_big_num = instance_number(obj_rock_big);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D553CF1
/// @DnDArgument : "var" "rock_big_num"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(rock_big_num < 3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7A1DA357
	/// @DnDParent : 3D553CF1
	/// @DnDArgument : "xpos" "random_range(0, 500)"
	/// @DnDArgument : "ypos" "-50"
	/// @DnDArgument : "objectid" "obj_rock_big"
	/// @DnDSaveInfo : "objectid" "obj_rock_big"
	instance_create_layer(random_range(0, 500), -50, "Instances", obj_rock_big);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 328D169F
/// @DnDArgument : "button" "mb_middle"
var l328D169F_0;
l328D169F_0 = mouse_check_button_pressed(mb_middle);
if (l328D169F_0)
{
	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 47C839ED
	/// @DnDParent : 328D169F
	/// @DnDArgument : "var" "player_bullet_num"
	/// @DnDArgument : "object" "obj_player_bullet"
	/// @DnDSaveInfo : "object" "obj_player_bullet"
	player_bullet_num = instance_number(obj_player_bullet);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C721CCB
	/// @DnDParent : 328D169F
	/// @DnDArgument : "var" "player_bullet_num"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "3"
	if(player_bullet_num < 3)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 45A87B08
		/// @DnDParent : 2C721CCB
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_player_bullet"
		/// @DnDSaveInfo : "objectid" "obj_player_bullet"
		instance_create_layer(x + 0, y + 0, "Instances", obj_player_bullet);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4742BAB1
/// @DnDArgument : "button" "mb_right"
var l4742BAB1_0;
l4742BAB1_0 = mouse_check_button(mb_right);
if (l4742BAB1_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 764707AE
	/// @DnDParent : 4742BAB1
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)motion_set(image_angle,4);"
	/// @description Execute Code
	motion_set(image_angle,4);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 467AB9BB
/// @DnDArgument : "button" "mb_right"
var l467AB9BB_0;
l467AB9BB_0 = mouse_check_button_released(mb_right);
if (l467AB9BB_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 777E6B98
	/// @DnDParent : 467AB9BB
	/// @DnDArgument : "var" "speed"
	speed = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 124C0BA6
var l124C0BA6_0;
l124C0BA6_0 = mouse_check_button_pressed(mb_left);
if (l124C0BA6_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5E22FD41
	/// @DnDParent : 124C0BA6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_rocket"
	/// @DnDSaveInfo : "objectid" "obj_player_rocket"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_rocket);
}