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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79C76D91
/// @DnDArgument : "var" "temp_instances"
temp_instances = 0;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 0B67F670
/// @DnDArgument : "var" "temp_instances"
temp_instances = part_system_create_layer("Instances", 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 7628F74F
type = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 00593D51
/// @DnDArgument : "sprite" "spr_star"
/// @DnDSaveInfo : "sprite" "spr_star"
part_type_sprite(type, spr_star, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 54F1C3B9
part_type_size(type, 0.1, 1, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 0938DEFD
/// @DnDArgument : "maxlife" "room_speed * 1"
part_type_life(type, 0, room_speed * 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 54F3DAB8
part_type_direction(type, 0, 360, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 03395460
part_type_speed(type, 1, 2, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
/// @DnDVersion : 1
/// @DnDHash : 175D7535
/// @DnDArgument : "x" "lengthdir_x(6, rocket_angle)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "lengthdir_y(0, rocket_angle)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "system" "temp_instances"
part_particles_create(temp_instances, x + lengthdir_x(6, rocket_angle), y + lengthdir_y(0, rocket_angle), type, 10);