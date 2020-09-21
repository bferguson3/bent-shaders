#version 430

// Required layout for ofMesh
layout (location = 0) in vec3 pos; 
layout (location = 3) in vec2 uv;

// normalized segment of sprite sheet:
uniform vec2 size;
uniform vec2 offset;
// Changing position in shader is much more efficient:
uniform vec3 charPos; 

out vec2 fragUV;

void main()
{
    gl_Position = vec4(pos + charPos, 1.0);
    fragUV = vec2(uv.x, 1.0-uv.y) * size + (offset * size); 
}