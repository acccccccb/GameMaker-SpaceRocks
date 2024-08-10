/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4722A9A3
/// @DnDArgument : "expr" "1.3"
/// @DnDArgument : "var" "speed"
speed = 1.3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33B3602F
/// @DnDArgument : "expr" "random_range(0, 360)"
/// @DnDArgument : "var" "image_angle"
image_angle = random_range(0, 360);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E61F244
/// @DnDArgument : "expr" "random_range(-50, 50)"
/// @DnDArgument : "var" "angle"
angle = random_range(-50, 50);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56733222
/// @DnDArgument : "expr" "point_direction(x, y, player1.x, player1.y) + angle"
/// @DnDArgument : "var" "direction"
direction = point_direction(x, y, player1.x, player1.y) + angle;