#version 410

uniform sampler2D sprite;
uniform float ALPHA_TEST_VAL;
in vec2 fragUV;
out vec4 outCol;

void main()
{
    outCol = texture(sprite, fragUV);
    if (outCol.a > ALPHA_TEST_VAL) outCol.a = ALPHA_TEST_VAL;
}
