#version 410

uniform sampler2D texImg;

in vec2 fragUV;
out vec4 outCol;

void main()
{
    outCol = texture(texImg, fragUV);
}
