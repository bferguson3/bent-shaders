#version 410

layout (location = 0) in vec3 pos;
layout (location = 3) in vec2 uv;

uniform float time;

out vec2 fragUV;

void main()
{
    float scrollSpeedX = 0.5;
    gl_Position = vec4(pos, 1.0);
    fragUV = vec2(uv.x, uv.y) + vec2(time * scrollSpeedX, 0.0);
}
