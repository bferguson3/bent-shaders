#version 410

uniform sampler2D sprite;
in vec2 fragUV;

out vec4 outCol;

void main()
{
    outCol = texture(sprite, fragUV);
    if (outCol.a > 0.7) outCol.a = 0.7;
}
