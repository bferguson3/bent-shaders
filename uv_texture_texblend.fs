#version 410

uniform sampler2D texImg;
uniform sampler2D blendTex;

in vec2 fragUV;
out vec4 outCol;

void main()
{
    outCol = mix(texture(texImg, fragUV), texture(blendTex, fragUV), 0.5);
    // Same as:
    // texture(texImg, fragUV) + texture(blendTex, fragUV) / 2
}
