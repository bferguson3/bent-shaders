#version 410

layout (location = 0) in vec3 pos;
layout (location = 3) in vec2 uv;

out vec2 fragUV;

void main()
{
    vec3 scale = vec3(1.0, 1.0, 1.0);
    vec3 translation = vec3(0.0, 0.0, 0.0);
    // MAD: Multiply + add is very fast on GPU
    gl_Position = vec4( (pos * scale) + translation, 1.0);
    fragUV = vec2(uv.x, 1.0-uv.y);
}
