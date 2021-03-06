shader_type canvas_item;

uniform vec4 from_color : hint_color;
uniform vec4 to_color : hint_color;

void fragment() {
    vec4 curr_color = texture(TEXTURE, UV);

    if (curr_color == from_color){
        COLOR = to_color;
    }else{
        COLOR = curr_color;
    }
}