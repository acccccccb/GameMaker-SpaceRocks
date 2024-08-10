/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D08EC02
/// @DnDInput : 2
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_1" "player1.image_angle"
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "var_1" "direction"
speed = 2;
direction = player1.image_angle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B9D23B3
/// @DnDArgument : "expr" "player1.image_angle"
/// @DnDArgument : "var" "rocket_angle"
rocket_angle = player1.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 12D47494
/// @DnDArgument : "angle" "rocket_angle"
image_angle = rocket_angle;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0D46FB83
/// @DnDInput : 2
/// @DnDArgument : "steps" "room_speed *0.5"
/// @DnDArgument : "steps_1" "room_speed *8"
/// @DnDArgument : "alarm_1" "1"
alarm_set(0, room_speed *0.5);
alarm_set(1, room_speed *8);