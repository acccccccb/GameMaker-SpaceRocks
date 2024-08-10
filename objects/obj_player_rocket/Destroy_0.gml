/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 1ACD998D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
/// @DnDArgument : "color" "$FF0055FF"
effect_create_below(4, x + 0, y + 0, 0, $FF0055FF & $ffffff);

/// @DnDAction : YoYo Games.Particles.Part_Syst_Destroy
/// @DnDVersion : 1.1
/// @DnDHash : 1B01EBC6
/// @DnDArgument : "system" "temp_instances"
part_system_destroy(temp_instances);

/// @DnDAction : YoYo Games.Particles.Part_Type_Destroy
/// @DnDVersion : 1
/// @DnDHash : 7C696EFB
part_type_destroy(type);