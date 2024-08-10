/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 608B263E
/// @DnDArgument : "var" "score"
draw_text(0, 0, string("Caption: ") + string(score));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3B681640
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""Fps: " "
/// @DnDArgument : "var" "fps"
draw_text(0, 20, string("Fps: " ) + string(fps));