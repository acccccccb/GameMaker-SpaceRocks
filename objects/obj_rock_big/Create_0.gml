/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E9566D4
/// @DnDInput : 2
/// @DnDArgument : "expr" "random_range(0,500)"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = random_range(0,500);
y = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4722A9A3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "speed"
speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33B3602F
/// @DnDArgument : "expr" "random_range(0, 360)"
/// @DnDArgument : "var" "image_angle"
image_angle = random_range(0, 360);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20EBC8DD
/// @DnDArgument : "expr" "random_range(-1, 1)"
/// @DnDArgument : "var" "turn_around"
turn_around = random_range(-1, 1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E61F244
/// @DnDArgument : "expr" "random_range(-20, 20)"
/// @DnDArgument : "var" "angle"
angle = random_range(-20, 20);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56733222
/// @DnDArgument : "expr" "point_direction(x, y, player1.x, player1.y) + angle"
/// @DnDArgument : "var" "direction"
direction = point_direction(x, y, player1.x, player1.y) + angle;