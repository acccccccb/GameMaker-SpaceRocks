/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 10A9445A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
effect_create_below(8, x + 0, y + 0, 0, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CD110AD
/// @DnDInput : 2
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_1" "player1.image_angle"
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "var_1" "direction"
speed = 10;
direction = player1.image_angle;