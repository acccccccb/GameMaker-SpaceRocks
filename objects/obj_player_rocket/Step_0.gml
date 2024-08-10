/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 62C5F587
variable = alarm_get(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21D9842B
if(variable == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78816788
	/// @DnDParent : 21D9842B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "rocket_status"
	rocket_status = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 62927609
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 69CA7D2C
	/// @DnDParent : 62927609
	/// @DnDArgument : "steps" "-1"
	/// @DnDArgument : "steps_relative" "1"
	alarm_set(0, -1 + alarm_get(0));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75DA4417
/// @DnDArgument : "var" "rocket_status"
/// @DnDArgument : "value" "1"
if(rocket_status == 1)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 503816B6
	/// @DnDParent : 75DA4417
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// mp_linear_step_object(obj_rock_big.x,obj_rock_big.y, 1, self);$(13_10)var angle = point_direction(self.x, self.y, obj_rock_big.x,obj_rock_big.y);$(13_10)$(13_10)if(rocket_angle > angle) {$(13_10)	rocket_angle -= 1;$(13_10)} else if(rocket_angle < angle) {$(13_10)	rocket_angle += 1;$(13_10)} else {$(13_10)	rocket_angle = angle;$(13_10)}$(13_10)image_angle = rocket_angle;$(13_10)direction = rocket_angle;"
	/// @description Execute Code
	// mp_linear_step_object(obj_rock_big.x,obj_rock_big.y, 1, self);
	var angle = point_direction(self.x, self.y, obj_rock_big.x,obj_rock_big.y);
	
	if(rocket_angle > angle) {
		rocket_angle -= 1;
	} else if(rocket_angle < angle) {
		rocket_angle += 1;
	} else {
		rocket_angle = angle;
	}
	image_angle = rocket_angle;
	direction = rocket_angle;

	/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
	/// @DnDVersion : 1.2
	/// @DnDHash : 64A641C5
	/// @DnDParent : 75DA4417
	/// @DnDArgument : "var" "temp_instances"
	temp_instances = part_system_create_layer("Instances", 0);

	/// @DnDAction : YoYo Games.Particles.Part_Type_Create
	/// @DnDVersion : 1.1
	/// @DnDHash : 768EB96C
	/// @DnDParent : 75DA4417
	type = part_type_create();
	// no blending

	/// @DnDAction : YoYo Games.Particles.Part_Type_Size
	/// @DnDVersion : 1
	/// @DnDHash : 00D586C4
	/// @DnDParent : 75DA4417
	part_type_size(type, 0.1, 1, 0, 0);

	/// @DnDAction : YoYo Games.Particles.Part_Type_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6A6CB56A
	/// @DnDParent : 75DA4417
	/// @DnDArgument : "startcol" "$FF0000FF"
	/// @DnDArgument : "midcol" "$FF00B2FF"
	/// @DnDArgument : "endcol" "$FF00FFFA"
	part_type_colour3(type, $FF0000FF & $FFFFFF, $FF00B2FF & $FFFFFF, $FF00FFFA & $FFFFFF);

	/// @DnDAction : YoYo Games.Particles.Part_Type_Life
	/// @DnDVersion : 1
	/// @DnDHash : 481A7A02
	/// @DnDParent : 75DA4417
	/// @DnDArgument : "maxlife" "room_speed * 0.2"
	part_type_life(type, 0, room_speed * 0.2);

	/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
	/// @DnDVersion : 1
	/// @DnDHash : 0E4BD0A5
	/// @DnDParent : 75DA4417
	/// @DnDArgument : "mindir" "direction - 180 - 50"
	/// @DnDArgument : "maxdir" "direction - 180 + 50"
	part_type_direction(type, direction - 180 - 50, direction - 180 + 50, 0, 0);

	/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 53249BF6
	/// @DnDParent : 75DA4417
	/// @DnDArgument : "maxspeed" "4"
	part_type_speed(type, 1, 4, 0, 0);

	/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
	/// @DnDVersion : 1
	/// @DnDHash : 1751B8DE
	/// @DnDParent : 75DA4417
	/// @DnDArgument : "x" "lengthdir_x(6, rocket_angle)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "lengthdir_y(0, rocket_angle)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "system" "temp_instances"
	/// @DnDArgument : "number" "20"
	part_particles_create(temp_instances, x + lengthdir_x(6, rocket_angle), y + lengthdir_y(0, rocket_angle), type, 20);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5B55C213
/// @DnDArgument : "steps" "-1"
/// @DnDArgument : "steps_relative" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, -1 + alarm_get(1));

/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5E1AF17C
/// @DnDArgument : "var" "rocket_status_end"
/// @DnDArgument : "alarm" "1"
rocket_status_end = alarm_get(1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 442BEBF4
/// @DnDArgument : "var" "rocket_status_end"
/// @DnDArgument : "op" "3"
if(rocket_status_end <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F9D7DEC
	/// @DnDParent : 442BEBF4
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "rocket_status"
	rocket_status = 2;
}